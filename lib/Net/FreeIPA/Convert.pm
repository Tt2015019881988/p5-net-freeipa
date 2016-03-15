package Net::FreeIPA::Convert;

use strict;
use warnings;

use Types::Serialiser; # is used by JSON::XS
use Readonly;

# Convert dispatch table
Readonly::Hash my %CONVERT_DISPATCH => {
    string => sub {my $val = shift; return "$val";}, # stringify
    int => sub {my $val = shift; return 0 + $val;}, # Force internal conversion to int
    float => sub {my $val = shift; return 1.0 * $val;}, # Force internal convertion to float
    boolean => sub {my $val = shift; return $val ? Types::Serialiser::true : Types::Serialiser::false;},
};

=head1 NAME

Net::FreeIPA::Convert provides type conversion for Net::FreeIPA

=head2 Public methods

=over

=item rpc_api

Before calling the rpc, convert args and option to their respective JSON type

Arguments are

=over

=item command: the RPC command (passed to rpc method)

=item args: arrayref with arguments

=item args_types: arrayref with argument types

=item opts: hashref with the options

=item opts_types_map: hashref with mapping between optoina name and type

=back

Calls rpc with args refarray and opts hashref after conversion.

=cut

sub rpc_api
{
    my ($self, $command, $args, $args_types, $opts, $opts_types_map) = @_;

    my @new_args;
    foreach my $arg (@$args) {
        push(@new_args, $self->convert($arg, shift(@$args_types)));
    }

    my %new_opts;
    foreach my $key (keys %$opts) {
        $new_opts{$key} = $self->convert($opts->{$key}, $opts_types_map->{$key});
    }

    return $self->rpc($command, \@new_args, \%new_opts);
}


=item convert

Convert/cast value to type

If a type is not found in the dispatch tabel, log a warning and return the value as-is.

=cut

# Do not use intermediate variables for the result

sub convert
{
    my ($self, $value, $type) = @_;
    my $funcref = $CONVERT_DISPATCH{$type};

    if (defined($funcref)) {
        return $funcref->($value);
    } else {
        $self->warn("No conversion for type $type");
        return $value;
    }
}

1;
