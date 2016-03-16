use strict;
use warnings;

use Test::More;
use Test::MockModule;

use Net::FreeIPA;

use Net::FreeIPA::API;

my $mock_rest = Test::MockModule->new('REST::Client');
my $mockbase = Test::MockModule->new("Net::FreeIPA::Base");

my $error;
$mockbase->mock('error', sub {shift; $error = \@_; diag "error: @_"});

my $args;
$mock_rest->mock('POST', sub { $args = \@_; });

my $code;
$mock_rest->mock('responseCode', sub { return $code });

my $content;
$mock_rest->mock('responseContent', sub { return $content });


my $f = Net::FreeIPA->new();

=head2 Test new_client

=cut

$error = undef;
$args = undef;
$code = 200;
ok($f->new_client("myhost.example.com"), "new_client returns success for kerberos");
ok(! defined($error), 'No error after successful kerberos login');
isa_ok($args->[0], 'REST::Client', "REST::Client->POST called");


is($f->{rc}, $args->[0], "REST::Client instance is save on success");
is($f->{id}, 0, 'id attribute is set');
isa_ok($f->{json}, 'JSON::XS', 'json attribute is JSON::XS instance');
ok($f->{json}->canonical(), 'json attribute has canonical flag set');
is($f->{APIversion}, $Net::FreeIPA::API::VERSION, "API VERSION set");

my $rc_cfg = $args->[0]->{_config};
is($rc_cfg->{ca}, "/etc/ipa/ca.crt", "ca.crt set");
is($rc_cfg->{host}, "https://myhost.example.com", "ca.crt set");
is_deeply($rc_cfg->{useragent}->{cookie_jar}->{COOKIES}, {}, "Empty hashref as cookiejar");
is($rc_cfg->{follow}, 1, "Follow enabled for kerberos");

is($args->[1], '/ipa/session/login_kerberos', 'kerberos login url');
ok(! defined($args->[2]), 'kerberos login has no body');
is_deeply($args->[3], {referer => "https://myhost.example.com/ipa"}, 'expected kerberos headers');


is_deeply($args->[0]->{_headers}, {
    'Accept' => 'applicaton/json',
    'Content-Type' => 'application/json',
    'referer' => 'https://myhost.example.com/ipa'
}, "expected headers after succesfull login");



$args = undef;
$error = undef;
$code = 200;
ok($f->new_client("myhost.example.com", username => 'myuser', password => 'mypassword'),
   "new_client returns success for username/password");
ok(! defined($error), 'No error after successful kerberos login');
isa_ok($args->[0], 'REST::Client', "REST::Client->POST called");

$rc_cfg = $args->[0]->{_config};
is($rc_cfg->{ca}, "/etc/ipa/ca.crt", "ca.crt set");
is($rc_cfg->{host}, "https://myhost.example.com", "ca.crt set");
is_deeply($rc_cfg->{useragent}->{cookie_jar}->{COOKIES}, {}, "Empty hashref as cookiejar");
ok(! defined($rc_cfg->{follow}), "Follow not enabled for username/password");

is($args->[1], '/ipa/session/login_password', 'password login url');
is($args->[2], 'user=myuser&password=mypassword', 'password login body');
is_deeply($args->[3], {
    referer => "https://myhost.example.com/ipa",
    Accept => 'text/plain',
    'Content-Type' => 'application/x-www-form-urlencoded',
}, 'expected login headers');

is_deeply($args->[0]->{_headers}, {
    'Accept' => 'applicaton/json',
    'Content-Type' => 'application/json',
    'referer' => 'https://myhost.example.com/ipa'
}, "expected headers after succesfull login");

# Failure
$error = undef;
$args = undef;
$code = 400;

ok(! defined($f->new_client("myhost.example.com", username => 'myuser', password => 'mypassword')),
   "new_client returns undef on failure for username/password");
is($error->[0], 'Login failed (url https://myhost.example.com/ipa/session/login_password code 400): <undef>',
   'Error after failed login');
isa_ok($args->[0], 'REST::Client', "REST::Client->POST called (but returned failure)");

=head2 Test post

=cut

$error = undef;
$args = undef;
$code = 200;
$content = '{"a":1}'; # JSON
$f->{id} = 100;
ok($f->post("mycommand", [qw(a b c)], {opt => 'ok', int => 1}),
    "succesful rpc call return 1");
ok(! defined($error), 'No error after successful post');
is_deeply($f->{answer}, {a => 1}, "Decoded JSON response in answer attribute");

isa_ok($args->[0], 'REST::Client', "REST::Client->POST called");

$rc_cfg = $args->[0]->{_config};
is($rc_cfg->{ca}, "/etc/ipa/ca.crt", "ca.crt set");
is($rc_cfg->{host}, "https://myhost.example.com", "ca.crt set");

is($args->[1], '/ipa/session/json', 'json url');
is($args->[2], '{"id":100,"method":"mycommand","params":[["a","b","c"],{"int":1,"opt":"ok","version":"2.156"}]}', 'JSON API body');
ok(! defined($args->[3]), 'No extra headers');

is_deeply($args->[0]->{_headers}, {
    'Accept' => 'applicaton/json',
    'Content-Type' => 'application/json',
    'referer' => 'https://myhost.example.com/ipa'
}, "expected headers after succesfull login");

# Failure

$error = undef;
$args = undef;
$code = 400;
$content = '{"b":1}'; # JSON
$f->{id} = 101;
ok(! defined($f->post("mycommand", [qw(a b c)], {opt => 'ok', int => 1})),
    "failed rpc call return undef");
is($error->[0], 'POST failed (url /ipa/session/json code 400): {"b":1}', 'Error after failed post');
is($f->{answer}, $content, 'answer attribute has undecoded response on failure');

=head2 Test rpc

=cut

$error = undef;
$content = '{"error":null,"id":0,"principal":"user@DOMAIN","result":{"count":1,"messages":[{"code":13001,"message":"API Version number was not sent, forward compatibility not guaranteed. Assuming servers API version, 2.156","name":"VersionMissing","type":"warning"}],"result":[{"dn":"uid=user,cn=users,cn=accounts,dc=domain","gidnumber":["1234567"],"has_keytab":true,"has_password":true,"homedirectory":["/home/user"],"loginshell":["/bin/bash"],"nsaccountlock":false,"sn":["Superman"],"uid":["user"],"uidnumber":["1234567"]}],"summary":"1 user matched","truncated":false},"version":"4.2.0"}';
$code = 200;
ok($f->rpc("mycommand", [qw(a b c)], {opt => 'ok', int => 1}),
   "succesfull rpc");
ok(! defined($error), 'No error after successful post');
is(scalar @{$f->{result}}, 1, "1 result from rpc");
ok($f->{result}->[0]->{has_keytab}, "first result has keytab attribute set");

# post failed
$error = undef;
$content = '{"error":null,"id":0,"principal":"user@DOMAIN","result":{"count":1,"messages":[{"code":13001,"message":"API Version number was not sent, forward compatibility not guaranteed. Assuming servers API version, 2.156","name":"VersionMissing","type":"warning"}],"result":[{"dn":"uid=user,cn=users,cn=accounts,dc=domain","gidnumber":["1234567"],"has_keytab":true,"has_password":true,"homedirectory":["/home/user"],"loginshell":["/bin/bash"],"nsaccountlock":false,"sn":["Superman"],"uid":["user"],"uidnumber":["1234567"]}],"summary":"1 user matched","truncated":false},"version":"4.2.0"}';
$code = 400;
ok(! defined($f->rpc("mycommand", [qw(a b c)], {opt => 'ok', int => 1})),
   "failed rpc with failed post");
like($error->[0], qr{^POST failed \(url /ipa/session/json code 400\): }, 'Error after failed post');
ok(! defined($f->{result}), "Result attribute is reset");


# This is fake data with error
$error = undef;
$code = 200;
$content = '{"error":{"some":"error"},"id":0,"principal":"user@DOMAIN","result":{"count":1,"messages":[{"code":13001,"message":"API Version number was not sent, forward compatibility not guaranteed. Assuming servers API version, 2.156","name":"VersionMissing","type":"warning"}],"result":[{"dn":"uid=user,cn=users,cn=accounts,dc=domain","gidnumber":["1234567"],"has_keytab":true,"has_password":true,"homedirectory":["/home/user"],"loginshell":["/bin/bash"],"nsaccountlock":false,"sn":["Superman"],"uid":["user"],"uidnumber":["1234567"]}],"summary":"1 user matched","truncated":false},"version":"4.2.0"}';
ok(! defined($f->rpc("mycommand", [qw(a b c)], {opt => 'ok', int => 1})),
   "failed rpc with succesful post and error in answer");
is($error->[0], 'post got error ({"some":"error"})', 'Error after failed post');
ok(! defined($f->{result}), "Result attribute is reset");


=head2 test get_api_metadata

=cut

$error = undef;
$args = undef;
$code = 200;
$content = '{"a":1,"result":{"commands":{"fake":1}}}'; # JSON with result->commands
$f->{id} = 101;
my $version = delete $f->{APIversion};
ok($f->get_api_metadata(),
    "succesful rpc call return 1 for get_api_metadata");
ok(! defined($error), 'No error after successful post');
is_deeply($f->{result}, {fake => 1}, "Commands in result attribute");

isa_ok($args->[0], 'REST::Client', "REST::Client->POST called");
is($args->[1], '/ipa/session/json', 'json url');
is($args->[2], '{"id":101,"method":"json_metadata","params":[[],{"command":"all"}]}',
   'JSON API body for json_metadata with no version and all commands');
ok(! defined($args->[3]), 'No extra headers');

# restore version
$f->{APIversion} = $version;


done_testing();
