use strict;
use warnings;

use Test::More;
use Test::MockModule;

use Net::FreeIPA;

my $mockbase = Test::MockModule->new("Net::FreeIPA::Base");
my $mockconvert = Test::MockModule->new("Net::FreeIPA::Convert");

my $all_args = {};

$mockconvert->mock('rpc_api', sub {

    my ($self, $command, $args, $args_types, $opts, $opts_types_map) = @_;

    $all_args = {
        command => $command,
        args => $args,
        args_types => $args_types,
        opts => $opts,
        opts_types_map => $opts_types_map,
    };

    return 1;
});

my $error;
$mockbase->mock('error', sub {shift; $error = \@_; diag "error: @_"});


my $f = Net::FreeIPA->new();
isa_ok($f, 'Net::FreeIPA::API', "Net::FreeIPA instance is a Net::FreeIPA::API too");

$error = undef;
$all_args = {};
ok($f->api_user_add("myuser", gecos => 'mygecos'),
   'user_add api call ok');

#diag "rpc_api allargs ", explain $all_args;


is($all_args->{command}, 'user_add', 'Expected command passed to rpc');
is_deeply($all_args->{args}, [qw(myuser)], "Argument passed as expected");
is_deeply($all_args->{args_types}, [qw(string)], "Argument types passed as expected");

is_deeply($all_args->{opts}, {gecos => 'mygecos'}, "Options passed as expected");
is_deeply($all_args->{opts_types_map}, {
    'addattr' => 'string',
    'all' => 'boolean',
    'carlicense' => 'string',
    'cn' => 'string',
    'departmentnumber' => 'string',
    'displayname' => 'string',
    'employeenumber' => 'string',
    'employeetype' => 'string',
    'facsimiletelephonenumber' => 'string',
    'gecos' => 'string',
    'gidnumber' => 'int',
    'givenname' => 'string',
    'homedirectory' => 'string',
    'initials' => 'string',
    'ipasshpubkey' => 'string',
    'ipatokenradiusconfiglink' => 'string',
    'ipatokenradiususername' => 'string',
    'ipauserauthtype' => 'string',
    'krbprincipalexpiration' => 'datetime',
    'krbprincipalname' => 'string',
    'l' => 'string',
    'loginshell' => 'string',
    'mail' => 'string',
    'manager' => 'string',
    'mobile' => 'string',
    'no_members' => 'boolean',
    'noprivate' => 'boolean',
    'nsaccountlock' => 'boolean',
    'ou' => 'string',
    'pager' => 'string',
    'postalcode' => 'string',
    'preferredlanguage' => 'string',
    'random' => 'boolean',
    'raw' => 'boolean',
    'setattr' => 'string',
    'sn' => 'string',
    'st' => 'string',
    'street' => 'string',
    'telephonenumber' => 'string',
    'title' => 'string',
    'uidnumber' => 'int',
    'usercertificate' => 'bytes',
    'userclass' => 'string',
    'userpassword' => 'string',
    'version' => 'string'
   }, "Options types passed as expected");

ok(! defined($error), "error not called");

$error = undef;
$all_args = {};
ok(! defined($f->api_user_add()),
   'user_add api returns undef on missing mandatory');
like($error->[0], qr{^api_user_add: undefined mandatory 1-th argument uid$},
     "Error called on failure 1");
ok(! $all_args->{command}, 'command empty, rpc_api not called 1');

$error = undef;
$all_args = {};
ok(! defined($f->api_user_add("myuser", gecosss => 'mygecos')),
   'user_add api returns undef on unknown option');
like($error->[0], qr{^api_user_add: not a valid option key: gecosss \(allowed addattr all.*\)$},
     "Error called on failure 2");
ok(! $all_args->{command}, 'command empty, rpc_api not called 2');

done_testing();
