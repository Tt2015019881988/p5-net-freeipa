use strict;
use warnings;

use Net::FreeIPA::Response;

use Test::More;

my $r;

=new init

=cut

$r = Net::FreeIPA::Response->new();
isa_ok($r, 'Net::FreeIPA::Response', 'a Net::FreeIPA::Response instance created');

$r = mkresponse();
isa_ok($r, 'Net::FreeIPA::Response', 'a Net::FreeIPA::Response instance created using mkrequest');

isa_ok($r->{error}, 'Net::FreeIPA::Error', 'Error instance by default');
ok(! $r->is_error(), 'is_error false');
ok($r, 'overloaded boolean = true if no error via is_error');

$r = mkresponse(error => 'abc');
isa_ok($r->{error}, 'Net::FreeIPA::Error', 'error attribute set');
is("$r->{error}", "Error abc", "string as message");
ok($r->is_error(), 'is_error true');
ok(! $r, 'overloaded boolean = false on error via is_error');


done_testing();
