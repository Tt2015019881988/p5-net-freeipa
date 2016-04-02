use strict;
use warnings;

use File::Basename;
use Test::More;

BEGIN {
    push(@INC, dirname(__FILE__));
}

use Test::MockModule;

use Net::FreeIPA;
use mock_rpc qw(example);

=head2 import

=cut

is(scalar keys %mock_rpc::cmds, 8, "imported example data");

=head2 Test the mock_rpc test module

=cut

my $f = Net::FreeIPA->new("hostname.domain");
isa_ok($f->{rc}, 'REST::Client', 'rc is a mocked REST::Client');
is($f->{rc}->{opts}->{host}, 'https://hostname.domain',
   'REST::Client host arg in opts attribute');
is($f->{rc}->{opts}->{ca}, '/etc/ipa/ca.crt',
   'REST::Client ca arg in opts attribute');
isa_ok($f->{rc}->{opts}->{useragent}, 'LWP::UserAgent',
       'REST::Client useragent arg in opts attribute');


$f->{id} = 0;
is($f->get_api_version(), '0.1.2', 'mocked env api_version found with id=0');

$f->{id} = 1;
is($f->get_api_version(), '1.1.2', 'mocked env api_version found with id=1');

$f->{id} = 2;
is($f->get_api_version(), '2.1.3', 'mocked env api_version found with id=2, specified params precedes');

$f->{id} = 3;
is($f->get_api_version(), '3.1.3', 'mocked env api_version found with id=3, specified params precedes and is regex');

$f->{id} = 4;
is($f->get_api_version(), '4.1.3', 'mocked env api_version found with id=4, specified options precedes and is regex');

done_testing();
