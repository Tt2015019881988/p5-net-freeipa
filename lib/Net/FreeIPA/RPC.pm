package Net::FreeIPA::RPC;

use strict;
use warnings;

use Readonly;

use REST::Client;
use JSON::XS;

use Net::FreeIPA::Error;

use LWP::UserAgent;
# Add kerberos support
use LWP::Authen::Negotiate;

Readonly my $IPA_CA_CERT => '/etc/ipa/ca.crt';
Readonly my $IPA_URL_LOGIN_PASSWORD => '/ipa/session/login_password';
Readonly my $IPA_URL_LOGIN_KERBEROS => '/ipa/session/login_kerberos';
Readonly my $IPA_URL_JSON => '/ipa/session/json';
Readonly my $IPA_URL_REFERER => '/ipa';

=head1 NAME

Net::FreeIPA::RPC provides RPC handling for Net::FreeIPA

=head2 Public methods

=over

=item new_rpc

Create a new L<REST::Client> instance, will be used throughout the remainder of the
instance.

An authentication cookie will be retrieved (and will be used for the actual
FreeIPA API calls).

Returns undef on failure, 1 on success.

=over

=item Arguments

=over

=item host: host to connect to

=back

=item Options

=over

=item username: the username to use for username/password based login

=item password: the password to use for username/password login

=item krbcc: kerberos credentials cache to use (set via KRB5CCNAME)

=back

=back

=cut

sub new_client
{
    my ($self, $host, %opts) = @_;

    # Make a LWP::UserAgent with a cookiejar,
    # connect once and reuse cookiejar for remainder

    my $url = "https://$host";

    my $browser = LWP::UserAgent->new();
    # Temporary cookie_jar
    $browser->cookie_jar( {} );

    my $rc = REST::Client->new(
        host => $url,
        ca => $IPA_CA_CERT,
        useragent => $browser,
        );

    my ($login_url, $body);
    my $headers = {
        'referer' => "$url$IPA_URL_REFERER",
    };
    if ($opts{username}) {
        $self->debug("Login using username/password");
        $login_url = $IPA_URL_LOGIN_PASSWORD;

        my $query = $rc->buildQuery(user => $opts{username}, password => $opts{password});
        # buildQuery is for the GET method, so you have to remove the '?'
        $body = substr($query, 1);

        $headers->{"Content-Type"} = "application/x-www-form-urlencoded";
        $headers->{"Accept"} = "text/plain";
    } else {
        local $ENV{KRB5CCNAME} = $opts{krbcc} if $opts{krbcc};
        # follow auth plugins, for LWP::Auth::Negotiate magic
        $rc->setFollow(1);
        $self->debug("Login using kerberos");
        $login_url = $IPA_URL_LOGIN_KERBEROS;
    }

    $rc->POST($login_url, $body, $headers);
    my $code = $rc->responseCode();
    my $content = $rc->responseContent();

    if ($code == 200) {
        $self->debug("Successful login");

        # prep JSON REST API
        $rc->addHeader("Content-Type", "application/json");
        $rc->addHeader("Accept", "applicaton/json");
        $rc->addHeader('referer', "$url$IPA_URL_REFERER");

        $self->{rc} = $rc;
        $self->{id} = 0;
        $self->{json} = JSON::XS->new();
        $self->{json}->canonical(1); # sort the keys, to create reproducable results
        $self->set_api_version('API');

        # Reset error atrribute (will be adapted by rpc method)
        $self->{error} = mkerror();
        return 1;
    } else {
        $content = '<undef>' if ! defined($content);
        # Do no print possible password
        $self->error("Login failed (url $url$login_url code $code): $content");
        # Set error attribute
        $self->{error} = mkerror({message => "Login failed (url $url$login_url code $code)"});
        return;
    }
}

=item set_apiversion

Set the API version for this session.

If no version string is passed, the C<api_version> attribute
is set to undef (effecitively removing it), and this is typically
interpreted by the server as using the latest version.

If the string C<API> is passed as version,
it will use verison from C<Net::FreeIPA::API::VERSION>.

If the version is a C<version> instance, the used version is
stringified and any leading 'v' is removed.

Returns the version that was set version on success, undef otherwise.
(If you want to get the current version, use the C<api_version> attribute.
This method will always set a version.)

=cut

sub set_api_version
{
    my ($self, $version) = @_;

    if (defined($version)) {
        if ( (! ref($version)) && ($version eq 'API')) {
            $version = $Net::FreeIPA::API::VERSION;
            $self->debug("set_api_version using API version $version");
        };

        if (ref($version) eq 'version') {
            $version = $version->stringify();
            $version =~ s/^v//;
        }
    };

    $self->{api_version} = $version;
    $self->debug("set api_version to ".(defined($version) ? $version : '<undef>'));
    return $version;
}

=item post

Make a JSON API post. Return 1 on succes, undef on failure.
Answer is stored in the answer attribute. (The answer is decoded
in case of success).

=cut

sub post
{
    my ($self, $command, $args, $opts) = @_;

    # Reset any previous answer
    $self->{answer} = undef;

    # For now, only support the API version from Net::FreeIPA::API
    if ($self->{api_version}) {
        $opts->{version} = $self->{api_version};
    }

    my $data = {
        method => $command,
        params => [$args, $opts],
        id => $self->{id},
    };

    # For convenience
    my $rc = $self->{rc};
    return if (! defined($rc));

    my $json_req = $self->{json}->encode($data);
    $self->debug("JSON POST $json_req") if $self->{debugapi};
    $rc->POST($IPA_URL_JSON, $json_req);

    my $code = $rc->responseCode();
    my $content = $rc->responseContent();
    my $ans;

    my $ret;
    if ($code == 200) {
        $ans = $self->{json}->decode($content);
        $self->debug("Successful JSON POST".($self->{debugapi} ? " JSON $content" : ""));
        $ret = 1;
        # Reset error atrribute (will be adapted by rpc method)
        $self->{error} = mkerror();
    } else {
        $ans = $content;

        $content = '<undef>' if ! defined($content);
        $self->error("POST failed (url $IPA_URL_JSON code $code): $content");
        # Set error (not processed anymore by rpc)
        $self->{error} = mkerror({message => "POST failed (url $IPA_URL_JSON code $code)"});
    }

    # Store last (decoded) answer in answer attribute
    $self->{answer} = $ans;

    return $ret;
}


=item rpc

Make a JSON API rpc. Return 1 on succes, undef on failure.

Arguments

=over

=item command: API command (passed to C<post> method)

=item args: arrayref with API command arguments (passed to C<post> method)

=item opts: hashref with API command options (passed to C<post> method)

=back

Options

=over

=item result_path

A path-like string, indicating which subtree of the decoided JSON response
should be set as result attribute (default C<result/result>).

=item noerror

An array ref with errorcodes or errornames that are not reported as an error.
(Still return C<undef>).

=back

Processed result is stored in the result attribute.

=cut

sub rpc
{
    my ($self, $command, $args, $opts, %opts) = @_;

    my $result_path = $opts{result_path} || 'result/result';

    # Reset any previous result
    $self->{result} = undef;

    return if (! $self->post($command, $args, $opts));

    my $ret;

    my $error = mkerror($self->{answer}->{error});

    # Save error attribute
    $self->{error} = $error;

    if ($error) {
        my @noerrors = grep {$error == $_} @{$opts{noerror} || []};

        my $error_method = @noerrors ? 'debug' : 'error';

        $self->$error_method("$command got error ($error)");
    } else {
        $ret = 1;

        $self->warn("$command got truncated result") if $self->{answer}->{result}->{truncated};

        my $res = $self->{answer};
        # remove any "empty" paths
        foreach my $subpath (grep {$_} split('/', $result_path)) {
            $res = $res->{$subpath} if (defined($res));
        };
        $self->{result} = $res;
    };

    return $ret;
}


=item get_api_commands

Retrieve the API commands metadata.

The result attribute holds the commands hashref.

Returns commands hasref on success, undef on failure.

=cut

sub get_api_commands
{
    my ($self) = @_;

    return $self->rpc('json_metadata', [], {command => "all"}, result_path => 'result/commands') ? $self->{result} : undef;
}


=item get_api_version

Retrieve the API version from the server.

The result attribute holds the version.

(To retrieve the latest version remove
the C<api_version> attribute first).

Does not set the version.

Returns the C<api_version> on success, undef on failure.

=cut

sub get_api_version
{
    my ($self) = @_;

    return $self->rpc('env', ['api_version'], {}, result_path => 'result/result/api_version') ? $self->{result} : undef;
}

=pod

=back

=cut

1;
