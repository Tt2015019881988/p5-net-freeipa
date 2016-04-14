package Net::FreeIPA::API;

use strict;
use warnings;

our $AUTOLOAD;

use Types::Serialiser; # is used by JSON::XS
use JSON::XS;

use Net::FreeIPA::API::Data;

use Readonly;

Readonly our $API_METHOD_PREFIX => 'api_';

Readonly my $TRUE => Types::Serialiser::true;
Readonly my $FALSE => Types::Serialiser::false;

# Cache these command keys
Readonly::Array our @CACHE_KEYS => qw(
    name
    takes_args takes_options
);

# Cache these keys from the takes_ CACHE_KEYS
Readonly::Array our @CACHE_TAKES_KEYS => qw(
    name type class
    required autofill multivalue
);

Readonly::Hash my %CACHE_TAKES_DEFAULT => {
    autofill => $FALSE,
    class => 'unknown_class',
    multivalue => $FALSE,
    name => 'unknown_name',
    required => $FALSE,
    type => 'unknown_type',
};

# hashref to store cached command data
my $cmd_cache = {};

=head2 Public functions

=over

=item cache

Given C<data> command hashref, cache (and return) the relevant
(filtered) command data.

C<data> is typically the decoded JSON command response.

=cut

sub cache
{
    my ($data) = @_;

    my $name = $data->{name};

    foreach my $key (sort keys %$data) {
        if ($key =~ m/^takes_/) {
            my $newdata = [];
            foreach my $tdata (@{$data->{$key}}) {
                if (ref($tdata) eq '') {
                    my $value = $tdata;
                    $value =~ s/[*+?]$//;
                    $tdata = {%CACHE_TAKES_DEFAULT};
                    $tdata->{name} = $value;
                } else {
                    # Arrayref of command hashrefs
                    foreach my $tkey (sort keys %$tdata) {
                        delete $tdata->{$tkey} if (! grep {$tkey eq $_} @CACHE_TAKES_KEYS);
                    }
                }
                push(@$newdata, $tdata);
            }
            $data->{$key} = $newdata;
        } else {
            delete $data->{$key} if (! grep {$key eq $_} @CACHE_KEYS);
        }
    }

    $cmd_cache->{$name} = $data;

    return $data;
}

=item retrieve

Retrieve the command data for command C<name>.

(For now, the data is loaded from the C<Net::FreeIPA::API::Data> that is
distributed with this package and is a fixed version only).

Returns the cache command hashref and undef errormessage on SUCCESS,
an emptyhashref and actual errormessage otherwise.
If the command is already in cache, return the cached version
(and undef errormessage).

=cut

sub retrieve
{
    my ($name) = @_;

    # Return already cached data
    return ($cmd_cache->{$name}, undef) if defined($cmd_cache->{$name});

    # Get the JSON data from Net::FreeIPA::API::Data
    # TODO: get the JSON data from the JSON api

    my $data;
    my $json = $Net::FreeIPA::API::Data::API_DATA{$name};
    if (! $json) {
        return {}, "retrieve name $name failed: no JSON data";
    }

    local $@;
    eval {
        $data = decode_json($json);
    };

    if ($@) {
        return {}, "retrieve name $name failed decode_json with $@";
    } else {
        return cache($data), undef;
    };
}

sub check_args
{
    my ($cmd, @args) = @_;

    my $posargs = [];
    my $options = {};
    my $rpcoptions = {};
    my $errormsg;

    # Check posargs

    # Check options

    return $posargs, $options, $rpcoptions, $errormsg;
}

# Always return Request instance
sub _api_function
{
    my ($cmd, @args) = @_;

    my ($posargs, $options, $rpcoptions, $errormsg) = check_args($cmd, @args);

    # Make Request instance
    my $instance;

    # If error, set error
    # Otherwise, set data

    return $instance;
}

# Return undef on failure
# Convert rpc_api otherwise
sub _api_method
{
    my ($cmd, $self, @args) = @_;

    my ($posargs, $options, $rpcoptions, $errormsg) = check_args($cmd, @args);

    if ($errormsg) {
        $self->error($errormsg);
        return;
    }
}


#
# 2 autoloaded types exists
#   a function with the exact commandname, returns C<_api_function> call
#   a method with command name prefixed with api_, returns a C<_api_method> call
#

sub AUTOLOAD
{
    my $called = $AUTOLOAD;

    # Don't mess with garbage collection!
    return if $called =~ m{DESTROY};

    my $called_orig = $called;
    $called =~ s{^.*::}{};

    my $method = "_api_function";
    my $api_pattern = "^$API_METHOD_PREFIX";
    if ($called =~ m/$api_pattern/) {
        $called =~ s{$api_pattern}{};
        $method = "_api_method";
    }

    my ($cmd, $fail) = retrieve($called);

    if ($fail) {
        die "Unknown Net::FreeIPA::API method: $called failed $fail (from original $called_orig method $method)";
    } else {
        # Run the expected method.
        # AUTOLOAD with glob assignment and goto defines the autoloaded method
        # (so they are only autoloaded once when they are first called),
        # but that breaks inheritance.

        # The method name is in the name attribute
        return $method($cmd, @_);
    }
}

=pod

=back

=cut


1;
