use strict;
use warnings;

use Test::More;
use Test::MockModule;

use Net::FreeIPA;

my $mockapi = Test::MockModule->new("Net::FreeIPA::RPC");
my $mockbase = Test::MockModule->new("Net::FreeIPA::Base");

my $args = [];
my $opts = {};
my $command;
my $expected_args = 0;
$mockapi->mock('rpc', sub {
    shift;
    diag "mock rpc called with args (@_)";
    $command = shift;

    foreach (0..$expected_args-1) {
        push(@$args, shift);
    }
    my %opts = @_;
    while (my ($k, $v) = each %opts) {
        $opts->{$k} = $v;
    }
    return 1;
});

my $error;
$mockbase->mock('error', sub {shift; $error = \@_; diag "error: @_"});


my $f = Net::FreeIPA->new();
isa_ok($f, 'Net::FreeIPA::API', "Net::FreeIPA instance is a Net::FreeIPA::API too");

$expected_args = 1;
$args = [];
$opts = {};
$command = '';
$error = undef;
ok($f->api_user_add("myuser", gecos => 'mygecos'),
   'user_add api call ok');
is($command, 'user_add', 'Expected command passed to rpc');
is_deeply($args, [qw(myuser)], "Argument passed as expected");
is_deeply($opts, {gecos => 'mygecos'}, "Options passed as expected");
ok(! defined($error), "error not called");

$error = undef;
$command = '';
ok(! defined($f->api_user_add("myuser", gecosss => 'mygecos')),
   'user_add api returns undef on unknown option');
like($error->[0], qr{Not a valid option key: gecosss \(allowed addattr all.*\)$},
     "Error called on failure");
ok(! $command, 'command empty, rpc not called');

done_testing();
