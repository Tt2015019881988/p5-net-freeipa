package Net::FreeIPA::Response;

use strict;
use warnings;

use base qw(Exporter);

use Net::FreeIPA::Error;

our @EXPORT = qw(mkresponse);

use overload bool => '_boolean';

=head1 NAME

Net::FreeIPA::Response is an response class for Net::FreeIPA.

Boolean logic is overloaded using C<_boolean> method (as inverse of C<is_error>).

=head2 Public methods

=over

=item mkresponse

A C<Net::FreeIPA::Response> factory

=cut

sub mkresponse
{
    return Net::FreeIPA::Response->new(@_);
}


=item new

Create new response instance.

Options

=over

=item error: an error (passed to C<mkerror>).

=back

=cut

sub new
{
    my ($this, %opts) = @_;
    my $class = ref($this) || $this;
    my $self = {
        error => mkerror($opts{error})
    };
    bless $self, $class;

    return $self;

};

=item is_error

Test if this is an error or not (based on error attribute).

=cut

sub is_error
{
    my $self = shift;
    return $self->{error} ? 1 : 0;
}

# Overloaded boolean, inverse of is_error
sub _boolean
{
    my $self = shift;
    return ! $self->is_error();
}

=pod

=back

=cut

1;
