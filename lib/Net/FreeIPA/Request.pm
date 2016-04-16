package Net::FreeIPA::Request;

use strict;
use warnings;

use base qw(Exporter);

our @EXPORT = qw(mkrequest);

use overload bool => '_boolean';

=head1 NAME

Net::FreeIPA::Reuqest is an request class for Net::FreeIPA.

Boolean logic is overloaded using C<_boolean> method (as inverse of C<is_error>).

=head2 Public methods

=over

=item mkrequest

A C<Net::FreeIPA::Request> factory

=cut

sub mkrequest
{
    return Net::FreeIPA::Request->new(@_);
}


=item new

Create new request instance from options for command C<command>.

Options

=over

=item args: positional arguments

=item opts: optional arguments

=item error: an error

=back

=cut

sub new
{
    my ($this, $command, %opts) = @_;
    my $class = ref($this) || $this;
    my $self = {
        command => $command,

        args => $opts{args} || [],
        opts => $opts{opts} || {},

        rpc => $opts{rpc} || {}, # options for rpc
        post => $opts{post} || {}, # options for post

        error => $opts{error}, # no default
    };
    bless $self, $class;

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