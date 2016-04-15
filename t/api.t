use strict;
use warnings;

use Test::More;
use Test::MockModule;

use JSON::XS;

use Net::FreeIPA;
use Net::FreeIPA::API;
use Types::Serialiser; # is used by JSON::XS

use Readonly;

Readonly my $TRUE => Types::Serialiser::true;
Readonly my $FALSE => Types::Serialiser::false;

# JSON command data

Readonly my $JDOMAINLEVEL_GET => '{"takes_args":[],"takes_options":[{"alwaysask":false,"attribute":false,"required":false,"csv":false,"deprecated_cli_aliases":[],"doc":"Client version. Used to determine if server will accept request.","autofill":false,"cli_name":"version","multivalue":false,"primary_key":false,"flags":["no_option","no_output"],"query":false,"name":"version","sortorder":2,"type":"unicode","class":"Str","label":"<version>","noextrawhitespace":true,"exclude":["webui"]}],"name":"domainlevel_get","doc":"Query current Domain Level.","NO_CLI":true}';

Readonly my $JDOMAINLEVEL_SET => '{"takes_args":[{"alwaysask":false,"attribute":false,"minvalue":0,"required":true,"csv":false,"deprecated_cli_aliases":[],"doc":"Domain Level","autofill":false,"cli_name":"level","multivalue":false,"primary_key":false,"flags":[],"query":false,"name":"ipadomainlevel","maxvalue":2147483647,"sortorder":2,"type":"int","class":"Int","label":"Domain Level"}],"takes_options":[{"alwaysask":false,"attribute":false,"required":false,"csv":false,"deprecated_cli_aliases":[],"doc":"Client version. Used to determine if server will accept request.","autofill":false,"cli_name":"version","multivalue":false,"primary_key":false,"flags":["no_option","no_output"],"query":false,"name":"version","sortorder":2,"type":"unicode","class":"Str","label":"<version>","noextrawhitespace":true,"exclude":["webui"]}],"name":"domainlevel_set","doc":"Change current Domain Level.","NO_CLI":true}';

Readonly my $JENV => '{"takes_args":["variables*"],"takes_options":[{"alwaysask":false,"attribute":false,"required":false,"csv":false,"deprecated_cli_aliases":[],"doc":"Forward to server instead of running locally","autofill":true,"cli_name":"server","truths":["1",1,"true","TRUE"],"multivalue":false,"primary_key":false,"flags":[],"query":false,"name":"server","default":false,"falsehoods":[0,"0","false","FALSE"],"sortorder":2,"type":"bool","class":"Flag","label":"<server>"},{"alwaysask":false,"attribute":false,"required":true,"csv":false,"deprecated_cli_aliases":[],"doc":"retrieve and print all attributes from the server. Affects command output.","autofill":true,"cli_name":"all","truths":["1",1,"true","TRUE"],"multivalue":false,"primary_key":false,"flags":["no_output"],"query":false,"name":"all","default":true,"falsehoods":[0,"0","false","FALSE"],"sortorder":2,"type":"bool","class":"Flag","label":"<all>","exclude":["webui"]},{"alwaysask":false,"attribute":false,"required":false,"csv":false,"deprecated_cli_aliases":[],"doc":"Client version. Used to determine if server will accept request.","autofill":false,"cli_name":"version","multivalue":false,"primary_key":false,"flags":["no_option","no_output"],"query":false,"name":"version","sortorder":2,"type":"unicode","class":"Str","label":"<version>","noextrawhitespace":true,"exclude":["webui"]}],"name":"env","doc":"Show environment variables.","NO_CLI":false}';

my $mockbase = Test::MockModule->new("Net::FreeIPA::Base");
my $mockrpc = Test::MockModule->new("Net::FreeIPA::RPC");

my $rpc_args = {};

my $error;
$mockbase->mock('error', sub {shift; $error = \@_; diag "error: @_"});


my $f = Net::FreeIPA->new();
isa_ok($f, 'Net::FreeIPA::API', "Net::FreeIPA instance is a Net::FreeIPA::API too");

=head2 cache

=cut

my $c;
$c = Net::FreeIPA::API::cache(decode_json($JDOMAINLEVEL_GET));
is_deeply($c, {
    'name' => 'domainlevel_get',
    'takes_args' => [],
    'takes_options' => [
        {
            'autofill' => $FALSE,
            'class' => 'Str',
            'multivalue' => $FALSE,
            'name' => 'version',
            'required' => $FALSE,
            'type' => 'unicode'
        }
    ],
}, "cache returns filtered version of JSON metadata");


$c = Net::FreeIPA::API::cache(decode_json($JDOMAINLEVEL_SET));
is_deeply([sort keys %$c], [sort @Net::FreeIPA::API::CACHE_KEYS], "only CACHE_KEYS as keys");
is_deeply([sort keys %{$c->{takes_args}->[0]}], [sort @Net::FreeIPA::API::CACHE_TAKES_KEYS], "only CACHE_TAKES_KEYS as keys for takes_args");
is_deeply([sort keys %{$c->{takes_options}->[0]}], [sort @Net::FreeIPA::API::CACHE_TAKES_KEYS], "only CACHE_TAKES_KEYS as keys for takes_options");


$c = Net::FreeIPA::API::cache(decode_json($JENV));
is_deeply($c->{takes_args},[{
      'autofill' => $FALSE,
      'class' => 'unknown_class',
      'multivalue' => $FALSE,
      'name' => 'variables',
      'required' => $FALSE,
      'type' => 'unknown_type'
}], "Handle string value with defaults");

=head2 version

=cut

is(Net::FreeIPA::API::version(), $Net::FreeIPA::API::Data::VERSION, "version returns data version");

=head2 retrieve

=cut

my $err;

($c, $err) = Net::FreeIPA::API::retrieve('user_add');
is($c->{name}, 'user_add', 'user_add retrieved');
ok(! defined($err), "No error");

my $c2;
($c2, $err) = Net::FreeIPA::API::retrieve('user_add');
is($c2, $c, 'user_add retrieved 2nd time is same data/instance (from cache)');
ok(! defined($err), "No error 2nd time");

($c, $err) = Net::FreeIPA::API::retrieve('no_real_method');
is_deeply($c, {}, 'unknown method retrieves undef');
is($err, 'retrieve name no_real_method failed: no JSON data',
     "retrieve of unknown method returns error message");



=head2 test api_ AUTOLOAD / $api_method

=cut

$mockrpc->mock('rpc', sub {

    my ($self, $command, $args, $opts, %opts) = @_;

    $rpc_args = {
        command => $command,
        args => $args,
        opts => $opts,
        rpc_opts => \%opts,
    };

    return 123; # something unique
});


sub tapi
{
    my ($res, $msg, $exp, $rpc) = @_;

    if($rpc) {
        is($res, $exp, "return value $msg");
        ok(! defined($error), "no error $msg");
        is_deeply($rpc_args, $rpc, "rpc called $msg");
    } else {
        # an error
        ok(! defined($res), "undef returned on error $msg");
        like($error->[0], qr{$exp}, "error message $msg");
        ok(! $rpc_args->{command}, "rpc command empty, rpc not called $msg");
    }
    # Reset, ok for next time
    $error = undef;
    $rpc_args = {};
}

# Reset once, they are re-reset at end of tapi
$error = undef;
$rpc_args = {};

tapi($f->api_user_add() || undef,
     "user_add api called without argument",
     "api_user_add: 1-th argument name uid mandatory with undefined value");
tapi($f->api_user_add("myuser", gecosss => 'mygecos') || undef,
     "user_add api called without missing mandatory option givenname",
     "api_user_add: option name givenname mandatory with undefined value");
tapi($f->api_user_add("myuser", gecosss => 'mygecos', givenname => 'myname', sn => 'last') || undef,
     "user_add api called with invalid option",
     "api_user_add: option invalid name gecosss");
tapi($f->api_user_add("myuser", gecos => 'mygecos', givenname => 'myname', sn => 'last', __result_path => 'some/path') || undef,
     "user_add api correctly called", 123, {
         command => 'user_add',
         args => ['myuser'],
         opts => {gecos => 'mygecos', givenname => 'myname', sn => 'last'},
         rpc_opts => {result_path => 'some/path'}, # __ removed and passed to rpc as option
     });



done_testing;
