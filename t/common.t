use strict;
use warnings;

use Test::More;
use Test::MockModule;

use Net::FreeIPA;

use version;

use Net::FreeIPA::Common;

my $mockapi = Test::MockModule->new("Net::FreeIPA::API");
my $awesome = 1;
$mockapi->mock('api_awesome_find', sub { $awesome = 0; return 10;});

my $mockbase = Test::MockModule->new("Net::FreeIPA::Base");

my $error;
$mockbase->mock('error', sub {shift; $error = \@_; diag "error: @_"});

my $warn;
$mockbase->mock('warn', sub {shift; $warn = \@_; diag "warn: @_"});

# Should not change by accident
is_deeply(\%Net::FreeIPA::Common::FIND_ONE, {
    aci => 'aciname',
    cert => 'cn',
    delegation => 'aciname',
    dnsforwardzone => 'idnsname',
    dnsrecord => 'idnsname',
    dnszone => 'idnsname',
    group => 'cn',
    host => 'fqdn',
    hostgroup => 'fqdn',
    server => 'cn',
    service => 'krbprincipalname',
    trust => 'cn',
    user => 'uid',
    vault => 'cn',
}, "FIND_ONE as expected");

my $f = Net::FreeIPA->new();


=head2 unknown method

=cut

$error = undef;
ok(! defined($f->find_one('woohaha', 100)), "unsupported method returns undef");
is($error->[0], "find_one: unknown API method api_woohaha_find",
   "unsupported method reports error");

=head2 method without mapping

=cut

$error = undef;
ok(! defined($f->find_one('awesome', 100)), "not-mapped attr method returns undef");
is($error->[0], "find_one: no supported attribute for api awesome",
   "not-mapped attr method reports error");
is($awesome, 1, "not-mapped attr method is not called");

=head2 method fails

=cut

my $args;
$mockapi->mock('api_host_find', sub {shift; $args = \@_; return;});
ok(! defined($f->find_one('host', 'my.host')), "failed method returns undef");
# all args and opts are squashed in an arrayref
is_deeply($args, ["", qw(fqdn my.host all 1)], "api_host_find called with correct args/opts");

=head2 method finds no answers

=cut

# return 1 for success, but count=0
$mockapi->mock('api_host_find', sub {my $self = shift; $self->{answer}->{result} = {count => 0}; return 1;});
ok(! defined($f->find_one('host', 'my.host')), "0 answers returns undef");

=head2 one answer

=cut

# return 1 for success, count=1, result
$mockapi->mock('api_host_find', sub {
    my $self = shift;
    $self->{answer}->{result} = {count => 1};
    $self->{result} = [{ans => 1}];
    return 1;
});
is_deeply($f->find_one('host', 'my.host'), {ans => 1}, "1 answer returns the answer");

=head2 2 answers

=cut

# return 1 for success, count=2, result
$warn = undef;
$mockapi->mock('api_host_find', sub {
    my $self = shift;
    $self->{answer}->{result} = {count => 2};
    $self->{result} = [{ans => 0},{ans => 1}];
    return 1;
});
is_deeply($f->find_one('host', 'my.host'), {ans => 0}, "2 answers returns the first answer");
is($warn->[0], 'one_find method api_host_find and value my.host returns 2 answers',
   "warn reported on more than one answer");


done_testing();
