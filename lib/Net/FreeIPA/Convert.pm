package Net::FreeIPA::Convert;

use strict;
use warnings;

use Types::Serialiser; # is used by JSON::XS
use Readonly;

# Convert dispatch table
Readonly::Hash my %CONVERT_DISPATCH => {
    str => sub {my $val = shift; return "$val";}, # stringify
    int => sub {my $val = shift; return 0 + $val;}, # Force internal conversion to int
    float => sub {my $val = shift; return 1.0 * $val;}, # Force internal convertion to float
    bool => sub {my $val = shift; return $val ? Types::Serialiser::true : Types::Serialiser::false;},
};

# Aliases for each dispatch
Readonly::Hash my %CONVERT_ALIAS => {
    str => [qw(unicode DNSName)],
};

Readonly our $API_METHOD_PREFIX => 'api_';

Readonly my $API_RPC_OPTION_PATTERN => '^__';


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

=item args_names: arrayref with argument names (same order as C<args>)

=item args_types: arrayref with argument types (same order as C<args>)

=item opts: hashref with the options

=item opts_keys: arrayref with valid option keys.
(All options starting with C<__> are passed as options to
C<Net::FreeIPA::RPC::rpc>, with C<__> prefix removed).

=item opts_types: arrayref with option types (same order as C<opts_keys>).

=back

Calls rpc with args refarray and opts hashref after conversion.

=cut

sub rpc_api
{
    my ($self, $command, $args, $args_names, $args_types, $opts, $opts_keys, $opts_types) = @_;

    my $method = "$API_METHOD_PREFIX$command";

    # Check arguments
    my $aidx = 0;
    my @new_args;
    foreach my $arg (@$args) {
        $aidx += 1;
        my $args_name = shift(@$args_names);
        if (defined($arg)) {
            push(@new_args, $self->convert($arg, shift(@$args_types)));
        } else {
            $self->error("$method: undefined mandatory $aidx-th argument $args_name");
            return;
        };
    };

    my %opts_types_map;
    # Hash slice to create the map
    @opts_types_map{@$opts_keys} = @$opts_types;

    my %new_opts;
    my %rpc_opts;
    foreach my $key (sort keys %$opts) {
        if ($key =~ m/$API_RPC_OPTION_PATTERN/) {
            my $val = $opts->{$key};
            $key =~ s/$API_RPC_OPTION_PATTERN//;
            $rpc_opts{$key} = $val;
        } else {
            if (grep {$key eq $_} @$opts_keys) {
                $new_opts{$key} = $self->convert($opts->{$key}, $opts_types_map{$key});
            } else {
                $self->error("$method: not a valid option key: $key (allowed ".join(",", @$opts_keys).")");
                return;
            }
        };
    }

    return $self->rpc($command, \@new_args, \%new_opts, %rpc_opts);
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

    if(!defined($funcref)) {
        # is it an alias?
        foreach my $tmpref (sort keys %CONVERT_ALIAS) {
            $funcref = $CONVERT_DISPATCH{$tmpref} if (grep {$_ eq $type} @{$CONVERT_ALIAS{$tmpref}});
        }
    };

    if (defined($funcref)) {
        return $funcref->($value);
    } else {
        $self->warn("No conversion for type $type");
        return $value;
    }
}

=pod

=back

=cut

1;
