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
is_deeply($all_args->{args_types}, [qw(unicode)], "Argument types passed as expected");

is_deeply($all_args->{opts}, {gecos => 'mygecos'}, "Options passed as expected");
is_deeply($all_args->{opts_types_map}, {
    'addattr' => 'unicode',
    'all' => 'bool',
    'carlicense' => 'unicode',
    'cn' => 'unicode',
    'departmentnumber' => 'unicode',
    'displayname' => 'unicode',
    'employeenumber' => 'unicode',
    'employeetype' => 'unicode',
    'facsimiletelephonenumber' => 'unicode',
    'gecos' => 'unicode',
    'gidnumber' => 'int',
    'givenname' => 'unicode',
    'homedirectory' => 'unicode',
    'initials' => 'unicode',
    'ipasshpubkey' => 'unicode',
    'ipatokenradiusconfiglink' => 'unicode',
    'ipatokenradiususername' => 'unicode',
    'ipauserauthtype' => 'unicode',
    'krbprincipalexpiration' => 'datetime',
    'krbprincipalname' => 'unicode',
    'l' => 'unicode',
    'loginshell' => 'unicode',
    'mail' => 'unicode',
    'manager' => 'unicode',
    'mobile' => 'unicode',
    'no_members' => 'bool',
    'noprivate' => 'bool',
    'nsaccountlock' => 'bool',
    'ou' => 'unicode',
    'pager' => 'unicode',
    'postalcode' => 'unicode',
    'preferredlanguage' => 'unicode',
    'random' => 'bool',
    'raw' => 'bool',
    'setattr' => 'unicode',
    'sn' => 'unicode',
    'st' => 'unicode',
    'street' => 'unicode',
    'telephonenumber' => 'unicode',
    'title' => 'unicode',
    'uidnumber' => 'int',
    'usercertificate' => 'str',
    'userclass' => 'unicode',
    'userpassword' => 'unicode',
    'version' => 'unicode'
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
like($error->[0], qr{^api_user_add: not a valid option key: gecosss \(allowed .*\)$},
     "Error called on failure 2");
ok(! $all_args->{command}, 'command empty, rpc_api not called 2');

done_testing();
