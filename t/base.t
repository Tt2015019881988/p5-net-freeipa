use strict;
use warnings;

use Test::More;

use Net::FreeIPA;

my $b = Net::FreeIPA->new();

diag "Net::FreeIPA instance ", explain $b;

foreach my $mod ('', qw(Base API RPC)) {
    my $module = "Net::FreeIPA";
    $module .= "::$mod" if $mod;
    isa_ok($b, "$module", "instance is a $module instance"); 
}

done_testing();
