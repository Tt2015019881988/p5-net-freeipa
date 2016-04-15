package Net::FreeIPA::API::Function;

use strict;
use warnings;

our $AUTOLOAD;

use Net::FreeIPA::API::Convert qw(process_args);
use Net::FreeIPA::API::Magic qw(retrieve);


# Always return Request instance
my $api_function = sub
{
    my ($cmd, @args) = @_;

    my ($errormsg, $posargs, $options, $rpcoptions) = process_args($cmd, @args);

    # Make Request instance
    my $instance;

    # If error, set error
    # Otherwise, set data

    return $instance;
};

#
# AUTOLOAD a function with the exact commandname, returns C<_api_function> call
#
sub AUTOLOAD
{
    my $called = $AUTOLOAD;

    # Don't mess with garbage collection!
    return if $called =~ m{DESTROY};

    my $called_orig = $called;
    $called =~ s{^.*::}{};

    my $method = $api_function;
    my ($cmd, $fail) = retrieve($called);

    if ($fail) {
        die "Unknown Net::FreeIPA::API method: $called failed $fail (from original $called_orig)";
    } else {
        # Run the expected method.
        # AUTOLOAD with glob assignment and goto defines the autoloaded method
        # (so they are only autoloaded once when they are first called),
        # but that breaks inheritance.

        # The method name is in the name attribute
        return &$method($cmd, @_);
    }
}

1;
