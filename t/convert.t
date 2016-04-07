use strict;
use warnings;

use JSON::XS;

use Test::More;
use Test::MockModule;

use Net::FreeIPA;

my $mockbase = Test::MockModule->new("Net::FreeIPA::Base");
my $error;
$mockbase->mock('error', sub {shift; $error = \@_; diag "error: @_"});

my $f = Net::FreeIPA->new();

=head2 convert

=cut

my $data = {
    int => 5,
    float => 10.5,
    str => 20,
    unicode => 21, # is an alias for a string, will be stringified
    bool_false => 0,
    bool_true => 1,
    bool_list => [1, 0, 1],
    bool_hash => { a=>1, b=>0, c=>1},
    not_a_type => {a => 1},
};

my $new_data = {};
foreach my $key (keys %$data) {
    my $type = $key;
    $type =~ s/_\w+$//;
    $new_data->{$key} = $f->convert($data->{$key}, $type);
};


=head2 check_type

=cut

$error = undef;
is_deeply($f->check_type("a string", "str", 0, "errorprefix"), ["a string", "str"],
          "check_type succesful with scalar");
ok(! defined($error), "No error logged on success checktype scalar");

$error = undef;
is_deeply($f->check_type(["a string"], "str", 1, "errorprefix"), [["a string"], "str"],
          "check_type succesful with multvalue/arrayref");
ok(! defined($error), "No error logged on success checktype multivalue/arrayref");

$error = undef;
ok(! defined($f->check_type(["a string"], "str", 0, "errorprefix")),
   "check_type returns undef on failure with scalar (got arrayref)");
is($error->[0], "errorprefix has to be a scalar (is not multivalued)",
   "error logged on failure checktype scalar with array value");

$error = undef;
ok(! defined($f->check_type("a string", "str", 1, "errorprefix")),
   "check_type returns undef on failure with arrayref (got scalar)");
is($error->[0], "errorprefix has to be an arrayref (is multivalued)",
   "error logged on failure checktype arrayref with scalar value");


=head2 integrated rpc_api

=cut

# Convert it in to non-pretty JSON string
my $j = JSON::XS->new();
$j->canonical(1); # sort the keys, to create reproducable results
is($j->encode($new_data),
   '{"bool_false":false,"bool_hash":{"a":true,"b":false,"c":true},"bool_list":[true,false,true],"bool_true":true,"float":10.5,"int":5,"not_a_type":{"a":1},"str":"20","unicode":"21"}',
   "JSON string of converted data");

my $mockrpc = Test::MockModule->new("Net::FreeIPA::RPC");

my $args = [];
my $opts = {};
my $command;
my $expected_args = 0;
$mockrpc->mock('rpc', sub {
    my($self, $command, $args, $opts) = @_;
    return $command.$j->encode($args).$j->encode($opts);
});

$error = undef;
is($f->rpc_api('do_something',
               [1, [2.5, 3.5]], [qw(arg1 arg2)], [qw(bool:0 float:1)],
               {false => 0, int => [1, 2], DNSName => 10}, # DNSName is an alias, will be stringified
               [qw(false int DNSName)],
               [qw(bool:0 int:1 DNSName:0)]),
   'do_something[true,[2.5,3.5]]{"DNSName":"10","false":false,"int":[1,2]}',
   "rpc_api converts and calls rpc method as expected");
ok(! defined($error), "No error logged on success rpc_api");

$error = undef;
# Only diff with previous is 2 arg is now not multivalued
ok(! defined($f->rpc_api('do_something',
               [1, [2.5, 3.5]], [qw(arg1 arg2)], [qw(bool:0 float:0)],
               {false => 0, int => [1, 2], DNSName => 10}, # DNSName is an alias, will be stringified
               [qw(false int DNSName)],
               [qw(bool:0 int:1 DNSName:0)])),
   "rpc_api fails with multivalue mismatch expected");
is($error->[0], "api_do_something: mandatory 2-th argument arg2 has to be a scalar (is not multivalued)",
   "rpc_api error logged on failure checktype arrayref with scalar value");



done_testing();
