use strict;
use warnings;

use Net::FreeIPA::Error;

use Test::More;

my $e;

sub is_error
{
    my ($arg, $test, $msg) = @_;
    my $e = mkerror($arg);
    ok($e->is_error($test), "$msg (error $e)");
}

sub isnt_error
{
    my ($arg, $test, $msg) = @_;
    my $e = mkerror($arg);
    ok(! $e->is_error($test), "$msg (error $e)");
}

# Should not change by accident
is_deeply(\%Net::FreeIPA::Error::ERROR_CODES, {
    DuplicateEntry => 4002,
    NotFound => 4001,
}, "ERROR_CODES as expected");


=head2 basic tests

=cut

$e = Net::FreeIPA::Error->new({});
isa_ok($e, 'Net::FreeIPA::Error', 'Created a Net::FreeIPA::Error instance');

=head2 error generator

=cut

$e = mkerror({});
isa_ok($e, 'Net::FreeIPA::Error', 'Created a Net::FreeIPA::Error instance');


=head2 is_error

=cut

# Test is $e is not an error

isnt_error(undef, undef, "empty args is not an error");
isnt_error({}, undef, "empty hashref is not an error");
isnt_error({whatever => 1}, undef, "hashref without name/code/message is not an error");

is_error({code => 1}, undef, "code is error");
is_error({code => 0}, undef, "code=0 is error");

is_error({name => 'somename'}, undef, "name is error");
is_error({name => 123}, undef, "name is error (name is all digits)");

is_error({message => 'a message'}, undef, 'a message is an error');

=head2 is_error_type

=cut

isnt_error(undef, 123, "empty args is not an error");
isnt_error({}, 123, "empty hashref is not an error");
isnt_error({whatever => 1}, 123, "hashref without name/code/message is not an error");

is_error({code => 1}, 1, "code is error 1");
isnt_error({code => 1}, 0, "code=1 error is not 0");

is_error({code => 0}, 0, "code=0 is error 0");
isnt_error({code => 0}, 1, "code=0 is not error 1");

is_error({name => 'somename'}, 'somename', "name is error");
isnt_error({name => 'somename'}, 'othername', "name is error is not othername error");
isnt_error({name => 'somename'}, 123, "name is error is not numeric error");

# TODO : do we want this?
isnt_error({name => 123}, 123, "name is all digits is not an all-digits error");

is_error({message => 'a message'}, 'a message', 'a message is an error');
isnt_error({message => 'a message'}, 'other message', 'a message is not an other message error');

=head2 overload

=cut

$e = mkerror({});
ok(! $e, "Not an error (but is an instance) (overload)");
ok($e != 123, "empty error is not code 123 (overload)");
is("$e", "No error", "error code stringifcation (overload)");

$e = mkerror({code => 123, name => 'someerror'});
ok($e, "Is an error (but is an instance) (overload)");
ok($e == 123, "error code=123 is code 123 (overload)");
ok($e == 'someerror', "error code=123 is name someerror (overload)");
is("$e", "Error someerror/123", "error code stringifcation (overload)");

=head2 reverse error

=cut
my $nf = $Net::FreeIPA::Error::NOT_FOUND;
my $nfc = $Net::FreeIPA::Error::ERROR_CODES{$nf};
is_error({code => $nfc}, $nf, "code can be an name error if it is known");
is_error({name => $nf}, $nfc, "name can be a code error if it is known");

# overload
$e = mkerror({name => $nf});
ok($e == $nf, "notfound error with name is not found (==name)");
ok($e->is_error($nf), "notfound error with name is not found (is_error(name))");
ok($e == $nfc, "notfound error with name is not found (==code)");
ok($e->is_error($nfc), "notfound error with name is not found (is_error(code))");


$e = mkerror({code => $nfc});
ok($e == $nf, "notfound error with code is not found (==name)");
ok($e->is_error($nf), "notfound error with code is not found (is_error(name))");
ok($e == $nfc, "notfound error with code is not found (==code)");
ok($e->is_error($nfc), "notfound error with code is not found (is_error(code))");

=head2 is_not_found

=cut

$e = mkerror({name => $nf});
ok($e->is_not_found(), "notfound error with name is not found");
$e = mkerror({code => $nfc});
ok($e->is_not_found(), "notfound error with code is not found");

$e = mkerror({name => 'other'});
ok(! $e->is_not_found(), "other error with name is not not found");
$e = mkerror({code => 123});
ok(! $e->is_not_found(), "123 error with code is not not found");

=head2 is_duplicate

=cut

my $dup = $Net::FreeIPA::Error::DUPLICATE_ENTRY;
my $dupc = $Net::FreeIPA::Error::ERROR_CODES{$dup};
$e = mkerror({name => $dup});
ok($e->is_duplicate(), "Duplicate error with name is duplicate");
$e = mkerror({code => $dupc});
ok($e->is_duplicate(), "Duplicate error with code is duplicate");

$e = mkerror({name => 'other'});
ok(! $e->is_duplicate(), "other error with name is not duplicate");
$e = mkerror({code => 123});
ok(! $e->is_duplicate(), "123 error with code is not duplicate");


done_testing();