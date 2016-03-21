package Net::FreeIPA::Common;

use strict;
use warnings;

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

=pod

=back

=cut

1;
