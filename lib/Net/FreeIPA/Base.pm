package Net::FreeIPA::Base;

use strict;
use warnings;

use Net::FreeIPA::DummyLogger;


=head1 NAME

Net::FreeIPA::Base provides basic class structure for Net::FreeIPA

=head2 Public methods

=over

=item new

=cut

sub new
{
    my $this = shift;
    my $class = ref($this) || $this;
    my $self = {}; # here, it gives a reference on a hash
    bless $self, $class;

    return $self->_initialize(@_) ? $self : undef;
};

=item error, warn, info, verbose, debug

Convenience methods to access the log instance that might
be passed during initialisation and set to $self->{log}.

=cut
    
no strict 'refs';
foreach my $i (qw(error warn info verbose debug)) {
    *{$i} = sub {
        my ($self, @args) = @_;
        if ($self->{log}) {
            return $self->{log}->$i(@args);
        } else {
            return;
        }
    }
}
use strict 'refs';


=pod

=back

=head2 Private methods

=over

=item _initialize

Handle the actual initializtion of new. Return 1 on success, undef otherwise.

=cut

sub _initialize
{
    my ($self, %opts) = @_;

    $self->{log} = $opts{log} || Net::FreeIPA::DummyLogger->new();

    return 1;
}

=pod

=back

=cut



1;
