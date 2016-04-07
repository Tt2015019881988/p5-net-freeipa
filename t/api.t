use strict;
use warnings;

use Test::More;
use Test::MockModule;

use Net::FreeIPA;

my $mockbase = Test::MockModule->new("Net::FreeIPA::Base");
my $mockconvert = Test::MockModule->new("Net::FreeIPA::Convert");
my $mockrpc = Test::MockModule->new("Net::FreeIPA::RPC");

my $all_args = {};
my $rpc_args = {};

my $error;
$mockbase->mock('error', sub {shift; $error = \@_; diag "error: @_"});


my $f = Net::FreeIPA->new();
isa_ok($f, 'Net::FreeIPA::API', "Net::FreeIPA instance is a Net::FreeIPA::API too");

=head2 test errors from rpc_api

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


$error = undef;
$rpc_args = {};
ok(! defined($f->api_user_add()),
   'user_add api returns undef on missing mandatory');
diag "rpc_api allargs ", explain $all_args;
like($error->[0], qr{^api_user_add: mandatory 1-th argument uid undefined$},
     "Error called on failure 1");
ok(! $rpc_args->{command}, 'command empty, rpc not called 1');

$error = undef;
$rpc_args = {};
ok(! defined($f->api_user_add("myuser", gecosss => 'mygecos')),
   'user_add api returns undef on missing mandatory option');
like($error->[0], qr{^api_user_add: missing mandatory option: givenname$},
     "Error called on failure 2");
ok(! $rpc_args->{command}, 'command empty, rpc not called 2');

$error = undef;
$rpc_args = {};
ok(! defined($f->api_user_add("myuser", gecosss => 'mygecos', givenname => 'myname', sn => 'last')),
   'user_add api returns undef on unknown option');
like($error->[0], qr{^api_user_add: not a valid option key: gecosss \(allowed .*\)$},
     "Error called on failure 3");
ok(! $rpc_args->{command}, 'command empty, rpc not called 3');


$error = undef;
$rpc_args = {};
is($f->api_user_add("myuser", gecos => 'mygecos', givenname => 'myname', sn => 'last', __result_path => 'some/path'), 123,
   'user_add api returns rpc result');
ok(! defined($error), 'no error reported');
is_deeply($rpc_args, {
    command => 'user_add',
    args => ['myuser'],
    opts => {gecos => 'mygecos', givenname => 'myname', sn => 'last'},
    rpc_opts => {result_path => 'some/path'}, # __ removed and passed to rpc as option
}, "expected rpc arguments/options");

=head2 test passed args

=cut

$mockconvert->mock('rpc_api', sub {

    my ($self, $command, $args, $args_names, $args_types, $opts, $opts_names, $opts_types) = @_;

    $all_args = {
        command => $command,
        args => $args,
        args_names => $args_names,
        args_types => $args_types,
        opts => $opts,
        opts_names => $opts_names,
        opts_types => $opts_types,
    };

    return 1;
});

$error = undef;
$all_args = {};
ok($f->api_user_add("myuser", gecos => 'mygecos', givenname => 'myname', sn => 'last'),
   'user_add api call ok');

#diag "rpc_api allargs ", explain $all_args;

is($all_args->{command}, 'user_add', 'Expected command passed to rpc');
is_deeply($all_args->{args}, [qw(myuser)], "Argument passed as expected");
is_deeply($all_args->{args_names}, [qw(uid)], "Argument names passed as expected");
is_deeply($all_args->{args_types}, [qw(unicode:0:1)], "Argument types passed as expected");

is_deeply($all_args->{opts}, {gecos => 'mygecos', givenname => 'myname', sn => 'last'},
          "Options passed as expected");
is_deeply($all_args->{opts_names},
          [qw(givenname sn cn displayname initials homedirectory gecos loginshell krbprincipalname krbprincipalexpiration mail userpassword random uidnumber gidnumber street l st postalcode telephonenumber mobile pager facsimiletelephonenumber ou title manager carlicense ipasshpubkey ipauserauthtype userclass ipatokenradiusconfiglink ipatokenradiususername departmentnumber employeenumber employeetype preferredlanguage usercertificate nsaccountlock setattr addattr noprivate all raw version no_members)],
          "Options names passed as expected");
is_deeply($all_args->{opts_types},
    [qw(unicode:0:1 unicode:0:1 unicode:0:0 unicode:0:0 unicode:0:0 unicode:0:0 unicode:0:0 unicode:0:0 unicode:0:0 datetime:0:0 unicode:1:0 unicode:0:0 bool:0:0 int:0:0 int:0:0 unicode:0:0 unicode:0:0 unicode:0:0 unicode:0:0 unicode:1:0 unicode:1:0 unicode:1:0 unicode:1:0 unicode:0:0 unicode:0:0 unicode:0:0 unicode:1:0 unicode:1:0 unicode:1:0 unicode:1:0 unicode:0:0 unicode:0:0 unicode:1:0 unicode:0:0 unicode:0:0 unicode:0:0 str:1:0 bool:0:0 unicode:1:0 unicode:1:0 bool:0:0 bool:0:0 bool:0:0 unicode:0:0 bool:0:0)],
    "Options types passed as expected");

ok(! defined($error), "error not called");

done_testing();
