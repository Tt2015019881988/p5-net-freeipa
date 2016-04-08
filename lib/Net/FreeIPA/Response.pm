package Net::FreeIPA::Error;

use strict;
use warnings;

use base qw(Exporter);
use vars qw($AUTOLOAD);

our @EXPORT_OK = qw(
    get_error_name
);

use Readonly;

use overload 
    bool => 'is_success',
#    '==' => '_is_equal',
#    '!=' => '_is_not_equal',
    '""' => '_stringify';

use constant {
    UnknownError => -1,
    Success => 0,
    OptionError => 3005,
    RequirementError => 3007,
    NotFound => 4001,
    DuplicateEntry => 4002,
    EmptiModlist => 4202,
};

my %ERROR_NAMES = (
    UnknownError() => 'UnknownError',
    Success() => 'Success',
    OptionError() => 'OptionError',
    RequirementError() => 'RequirementError',
    NotFound() => 'NotFound',
    DuplicateEntry() => 'DuplicateEntry',
    EmptiModlist() => 'EmptiModlist',
);


=head1 NAME

Net::FreeIPA::Response is a response class for Net::FreeIPA.

Boolean logic and (non)-equal operator are overloaded using C<is_success> method.
(Use C<==> and C<!=> also for name/message, not C<eq> / C<ne> operators).

=head2 Public Functions

=over

=item get_error_name

Create new error instance from (decoded) JSON response (i.e. a hashref).

=cut

sub get_error_name
{
    my($self, $code) = @_;
    $code = $self if 1 == scalar @_;
    return $ERROR_NAMES{$code};
}

=pod

=back

=head2 Public methods

=over

=item new

Create new error instance from (decoded) JSON response (i.e. a hashref).

=cut

sub new
{
    my ($proto, $result) = @_;
    my $class = ref($this) || $this;
    my $self = $result || {
        error => {
            code => UnknownError,
            name => get_error_name(UnknownError),
        }
    };
    bless $self, $class;
};

=item is_success

Test if this reponse is success (i.e.: is not an error)

=cut

sub is_success
{
    my ($self) = @_;
    return not($self->is_error);
}

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
    my ($self) = @_;
    return 1 if(
        $self->error_code() ||
        $self->error_name() ||
        $self->error_message()
    );
    return 0;
}

sub error_code
{
    my ($self) = @_;
    return $self->{error_code} if($self->{error_code});
    return $self->{error}->{code} if(ref($self->{error}) eq 'HASH' and $self->{error}->{code});
    return 0;
}

sub error_name
{
    my ($self) = @_;
    return $self->{error_name} if($self->{error_name});
    return $self->{error}->{name} if(ref($self->{error}) eq 'HASH' and $self->{error}->{name});
    return "";
}

sub error_message
{
    my ($self) = @_;
    return $self->{error}->{message} if(ref($self->{error}) eq 'HASH' and $self->{error}->{message});
    return $self->{error} if($self->{error});
    return '';
}

=item is_duplicate

Test if this is a DuplicateEntry error

=cut

sub is_duplicate
{
    my ($self) = @_;
    return $self->error_code == DuplicateEntry;
}

=item is_not_found

Test if this is a NotFound error

=cut

sub is_not_found
{
    my ($self) = @_;
    return $self->error_code == NotFound;
}

=pod

=back

=head2 Protected methods

=over

=item _is_equal

is_equal for overloading ==

=cut

# XXX: implement is_equal
sub _is_equal
{
    my ($self, $other) = @_;
    return $self->error_code == $other_error_code if($self->is_error and $other->is_error);
    return 1;
}

=item _is_not_equal

inverse is_equal for overloading !=

=cut

sub _is_not_equal
{
    my ($self, @args) = @_;
    return ! $self->_is_equal(@args);
}

=item _stringify

create string for stringification

=cut

sub _stringify
{
    my $self = shift;
    return 'Error :: code: ' . $self->error_code() . ' (' . $self->error_name() . ') ' . $self->error_message() if($self->is_error())

    # XXX: implement a string representation of a correct response
    return  "Success";
}

=item AUTOLOAD

Autoload for accessing result values

=cut

sub AUTOLOAD
{
    my ($self, $key) = @_;

    my $sub = $AUTOLOAD;
    (my $name = $sub) =~ s/.*:://;

    if(ref($self->{result}) eq 'HASH'){
        my $value = $self->{result}->{$name};
        if(defined $key){
            return $value->[$key] if(ref($value) eq 'ARRAY');
            return $value->{$key} if(ref($value) eq 'HASH');
        }
        return $value;
    };

    return undef;
}

=pod

=back

=cut

1;
