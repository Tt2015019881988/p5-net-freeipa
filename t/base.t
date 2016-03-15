use strict;
use warnings;

use Test::More;

use Net::FreeIPA;

my $f = Net::FreeIPA->new();

diag "Net::FreeIPA instance ", explain $b;

foreach my $mod ('', qw(Base API RPC)) {
    my $module = "Net::FreeIPA";
    $module .= "::$mod" if $mod;
    isa_ok($f, "$module", "instance is a $module instance");
}

isa_ok($f->{log}, 'Net::FreeIPA::DummyLogger',
       "Log atribute is initialized with a DummyLogger");

done_testing();
