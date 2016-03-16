package Net::FreeIPA::RPC;

use strict;
use warnings;

use Readonly;

use REST::Client;
use JSON::XS;

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
        $self->{APIversion} = $Net::FreeIPA::API::VERSION;

        return 1;
    } else {
        $content = '<undef>' if ! defined($content);
        # Do no print possible password
        $self->error("Login failed (url $url$login_url code $code): $content");
        return;
    }
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
    if ($self->{APIversion}) {
        my $version = $self->{APIversion}->stringify();
        $version =~ s/^v//;
        $opts->{version} = $version;
    }

    my $data = {
        method => $command,
        params => [$args, $opts],
        id => $self->{id},
    };

    # For convenience
    my $rc = $self->{rc};
    return if (! defined($rc));

    $rc->POST($IPA_URL_JSON, $self->{json}->encode($data));

    my $code = $rc->responseCode();
    my $content = $rc->responseContent();
    my $ans;

    my $ret;
    if ($code == 200) {
        $ans = decode_json($content);
        $self->debug("Successful POST");
        $ret = 1;
    } else {
        $ans = $content;

        $content = '<undef>' if ! defined($content);
        $self->error("POST failed (url $IPA_URL_JSON code $code): $content");
    }

    # Store last (decoded) answer in answer attribute
    $self->{answer} = $ans;

    return $ret;
}


=item rpc

Make a JSON API rpc. Return 1 on succes, undef on failure.
Processed result is stored in the result attribute.

=cut

sub rpc
{
    my $self = shift;

    # Reset any previous result
    $self->{result} = undef;

    return if (! $self->post(@_));

    my $ret;
    my $error = $self->{answer}->{error};
    if ($error) {
        $self->error("post got error (".$self->{json}->encode($error).")");
    } else {
        $ret = 1;

        my $full_result = $self->{answer}->{result};
        $self->warn("rpc got truncated result") if $full_result->{truncated};

        $self->{result} = $full_result->{result};
    };

    return $ret;
}


=item get_api_commands

Retrieve the API command metatdata.

The result attribute holds the commands hashref.

Returns 1 on success, undef on failure.

=cut

sub get_api_metadata
{
    my ($self) = @_;

    my $ec = $self->rpc('json_metadata', [], {command => "all"});

    # All commands are in result->commands
    $self->{result} = $self->{answer}->{result}->{commands} if $ec;

    return $ec;
}

=pod

=back

=cut

1;
