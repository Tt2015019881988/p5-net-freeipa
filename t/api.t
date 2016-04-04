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

$mockconvert->mock('rpc', sub {

    my ($self, $command, $args, $opts, %opts) = @_;

    $all_args = {
        command => $command,
        args => $args,
        opts => $opts,
        rpc_opts => \%opts,
    };

    return 1;
});


$error = undef;
$rpc_args = {};
ok(! defined($f->api_user_add()),
   'user_add api returns undef on missing mandatory');
diag "rpc_api allargs ", explain $all_args;
like($error->[0], qr{^api_user_add: undefined mandatory 1-th argument uid$},
     "Error called on failure 1");
ok(! $rpc_args->{command}, 'command empty, rpc not called 1');

$error = undef;
$rpc_args = {};
ok(! defined($f->api_user_add("myuser", gecosss => 'mygecos')),
   'user_add api returns undef on unknown option');
like($error->[0], qr{^api_user_add: not a valid option key: gecosss \(allowed .*\)$},
     "Error called on failure 2");
ok(! $rpc_args->{command}, 'command empty, rpc not called 2');

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
ok($f->api_user_add("myuser", gecos => 'mygecos'),
   'user_add api call ok');

#diag "rpc_api allargs ", explain $all_args;

is($all_args->{command}, 'user_add', 'Expected command passed to rpc');
is_deeply($all_args->{args}, [qw(myuser)], "Argument passed as expected");
is_deeply($all_args->{args_names}, [qw(uid)], "Argument names passed as expected");
is_deeply($all_args->{args_types}, [qw(unicode)], "Argument types passed as expected");

is_deeply($all_args->{opts}, {gecos => 'mygecos'}, "Options passed as expected");
is_deeply($all_args->{opts_names},
          [qw(givenname sn cn displayname initials homedirectory gecos loginshell krbprincipalname krbprincipalexpiration mail userpassword random uidnumber gidnumber street l st postalcode telephonenumber mobile pager facsimiletelephonenumber ou title manager carlicense ipasshpubkey ipauserauthtype userclass ipatokenradiusconfiglink ipatokenradiususername departmentnumber employeenumber employeetype preferredlanguage usercertificate nsaccountlock setattr addattr noprivate all raw version no_members)],
          "Options names passed as expected");
is_deeply($all_args->{opts_types},
    [qw(unicode unicode unicode unicode unicode unicode unicode unicode unicode datetime unicode unicode bool int int unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode unicode str bool unicode unicode bool bool bool unicode bool)],
    "Options types passed as expected");

ok(! defined($error), "error not called");

done_testing();
