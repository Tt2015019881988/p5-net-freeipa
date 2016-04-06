package Net::FreeIPA::Common;

use strict;
use warnings;

use Net::FreeIPA::Convert;
use Net::FreeIPA::Error;

use Readonly;

# Convert find one API method in attribute name to find
# This map might be API version dependant
Readonly::Hash our %FIND_ONE => {
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
};

=head1 NAME

Net::FreeIPA::Common provides common convenience methods for Net::FreeIPA

=head2 Public methods

=over

=item find_one

Use the C<api> method C<<api_<api>_find>> to retrieve a single answer.

The C<criteria> argument of the C<<api_<api>_find>> is the empty string,
the C<all> option is set.

(Warns if more than one is found, and returns the first one
in that case).

Returns undef in case of problem or if there is no result.

=cut

sub find_one
{
    my ($self, $api, $value) = @_;

    my $res;

    my $method = "api_".$api."_find";
    if ($self->can($method)) {
        my $attr = $FIND_ONE{$api};
        if ($attr) {
            if ($self->$method("", $attr => $value, all => 1)) {
                my $count = $self->{answer}->{result}->{count};
                if (! $count) {
                    $self->debug("one_find method $method and value $value returns 0 answers.");
                } else {
                    if ($count > 1) {
                        $self->warn("one_find method $method and value $value returns $count answers");
                    };
                    $res = $self->{result}->[0];
                }
            } else {
                # error is already logged.
                $self->debug("find_one: method $method failed.");
            };
        } else {
            $self->error("find_one: no supported attribute for api $api");
        }
    } else {
        $self->error("find_one: unknown API method $method");
    };

    return $res;
}

=item do_one

Wrapper for simple call using C<api> and C<method> via
C<<api_<api>_<method>(C<name>)>>.

Any options are passed.

An error-type is not reported as error
(still returns C<undef>):

=over

=item DuplicateEntry: when C<method> is C<add>,
an existing entry is not reported as an error

=item NotFound: when C<method> is not C<add>,
an missing entry is not reported as an error

=back

Returns the result attribute on success, or undef otherwise.

=cut

sub do_one
{
    my ($self, $api, $method, $name, %opts) = @_;

    my $api_method = $Net::FreeIPA::Convert::API_METHOD_PREFIX.$api."_$method";

    # For add, do not report existing name as error
    # for other methods, do not report missing name as error
    my ($noerror, $errormethod, $noerrormsg);
    if ($method eq 'add') {
        $noerror = $Net::FreeIPA::Error::DUPLICATE_ENTRY;
        $noerrormsg = "already exists";
    } else {
        $noerror = $Net::FreeIPA::Error::NOT_FOUND;
        $noerrormsg = "does not exist";
    }
    $opts{__noerror} = [$noerror];

    my $res = $self->$api_method($name, %opts) ? $self->{result} : undef;

    my $msg;
    if ($res) {
        $msg = "succesfully $method-ed $api $name";
    } else {
        $msg = "failed to $method $api $name";
        if ($self->{error} == $noerror) {
            $msg .= " $api $noerrormsg";
        }
    }

    $self->debug("$api_method: $msg");

    return $res;
};


=pod

=back

=cut

1;
