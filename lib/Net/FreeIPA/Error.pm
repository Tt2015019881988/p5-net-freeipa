package Net::FreeIPA::Error;

use strict;
use warnings;

use base qw(Exporter);

our @EXPORT = qw(mkerror);

use Readonly;

use overload bool => 'is_error', '==' => '_is_equal', '!=' => '_is_not_equal', '""' => '_stringify';

Readonly our $DUPLICATE_ENTRY => 'DuplicateEntry';
Readonly our $NOT_FOUND => 'NotFound';

Readonly::Hash our %ERROR_CODES => {
    $DUPLICATE_ENTRY => 4002,
    $NOT_FOUND => 4001,
};

Readonly::Hash our %REVERSE_ERROR_CODES => map {$ERROR_CODES{$_} => $_} keys %ERROR_CODES;

=head1 NAME

Net::FreeIPA::Error is an error class for Net::FreeIPA.

Boolean logic and (non)-equal operator are overloaded using C<is_error> method.
(Use C<==> and C<!=> also for name/message, not C<eq> / C<ne> operators).

=head2 Public methods

=over

=item mkerror

A C<Net::FreeIPA::Error> factory

=cut

sub mkerror
{
    return Net::FreeIPA::Error->new(@_);
}


=item new

Create new error instance from options, e.g. from a (decoded dereferenced) JSON response.

=cut

sub new
{
    my ($this, %opts) = @_;
    my $class = ref($this) || $this;
    my $self = \%opts;
    bless $self, $class;
};

=item is_error

Test if this is an error or not.

If an optiona l C<type> argument is passed,
test if error name or code is equal to C<type>.

A numerical type is compare to the code, a string is compare to the name or message

For a set of known errorcodes, a automatic reverse lookup is performed.
When e.g. only the error name attribute is set, one can test using a known errorcode.

=cut

sub is_error
{
    my ($self, $type, $reverse_lookup) = @_;

    $reverse_lookup = 1 if ! defined($reverse_lookup);

    my $res;

    if(defined($type)) {
        my $revtype;

        if ($type =~ m/^\d+$/) {
            $revtype = $REVERSE_ERROR_CODES{$type} if (exists($REVERSE_ERROR_CODES{$type}));
            $res = exists($self->{code}) && ($self->{code} == $type);
        } else {
            $revtype = $ERROR_CODES{$type} if (exists($ERROR_CODES{$type}));
            $res = (exists($self->{name}) && ($self->{name} eq $type)) || (exists($self->{message}) && ($self->{message} eq $type));
        }

        # If a reverse known error is found, and it is not yet an error, lookup the reverse
        # Disable the reverse-lookup here to avoid loop
        $res = $self->is_error($revtype, 0) if ($reverse_lookup && defined($revtype) && ! $res);
    } else {
        $res = exists($self->{code}) || exists($self->{name}) || exists($self->{message});
    }

    return $res ? 1 : 0;
}

=item is_duplicate

Test if this is a DuplicateEntry error

=cut

sub is_duplicate
{
    my ($self) = @_;

    return $self->is_error($DUPLICATE_ENTRY);
}

=item is_not_found

Test if this is a NotFound error

=cut

sub is_not_found
{
    my ($self) = @_;

    return $self->is_error($NOT_FOUND);
}

# is_equal for overloading ==
sub _is_equal
{
    # Use shift, looks like a 3rd argument (an empty string) is passed
    my $self = shift;
    return $self->is_error(shift);
}

# inverse is_equal for overloading !=
sub _is_not_equal
{
    my $self = shift;
    return ! $self->_is_equal(@_);
}

# _stringify create string for stringification
sub _stringify
{
    my $self = shift;

    if ($self->is_error()) {
        my @fields;
        foreach my $attr (qw(name code message)) {
            push(@fields, $self->{$attr}) if exists ($self->{$attr});
        }
        return "Error ".join('/', @fields);
    } else {
        return  "No error";
    };
}

=pod

=back

=cut

1;
