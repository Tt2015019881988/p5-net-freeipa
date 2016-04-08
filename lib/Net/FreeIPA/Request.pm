package Net::FreeIPA::Request;

use Net::FreeIPA::Response;

use strict;
use warnings;

sub new
{
    my ($proto) = @_;
    my $class = ref($proto) || $proto;

    my $self = {};
    bless $self, $class;
    return $self;
}

sub data
{
}

sub process
{
    my ($self, $response) = @_;
    return new Net::FreeIPA::Response($response);
}

package Net::FreeIPA::Request::API;
use strict;
use strict;

use parent qw(Net::FreeIPA::Request);

use constant {
    ApiMethodPrefix => 'api_',
};

sub new
{
    my ($proto, $command, $args, $args_names, $args_types, $opts, $opts_keys, $opts_types) = @_;
    my $class = ref($proto) || $proto;
    my $self = $class->SUPER::new();
    $self->{_command} = $command;
    $self->{_args} = $args;
    $self->{_args_names} = $args_names;
    $self->{_args_types} = $args_types;
    $self->{_opts} = $opts;
    $self->{_opts_keys} = $opts_keys;
    $self->{_opts_types} = $opts_types;

    bless $self, $class;
    return $self;
}

sub data
{
    my ($self) = @_;

    my $method = ApiMethodPrefix . $self->{_command};

    my $aidx = 0;
    my @new_args;
    my $args_len = scalar @($self->{_args});

    # Check arguments
    for(my $aidx = 0; $aidx < $args_len; $aids++){
        my $arg = $self->{_args}->[$aidx];
        my $args_name = $args_names->[$aidx];

        my $emsg = "$method: mandatory $aidx-th argument $args_name";
        my ($type, $multi, $mandatory) = split(':', $self->{_args_types}->[$aidx]);

        if (defined($arg)) {
            my $cargs = $self->check_type($arg, $type, $multi, $emsg);
            if ($cargs) {
                push(@new_args, $self->convert(@$cargs));
            } else {
                # error logged in check_type
                return;
            }
        } elsif ($mandatory) {
            # Lets hope there are no non-mandatory positional arguments
            $self->error("$emsg undefined");
            return;
        };
    };

    my %opts_types_map;
    # Hash slice to create the map
    @opts_types_map{@$opts_keys} = @$opts_types;

    my %new_opts;
    my %rpc_opts;

    # Check for mandatory options
    foreach my $key (@$opts_keys) {
        my ($type, $multi, $mandatory) = split(':', $opts_types_map{$key});
        if ($mandatory && ! defined($opts->{$key})) {
            $self->error("$method: missing mandatory option: $key");
            return;
        }
    }

    foreach my $key (sort keys %$opts) {
        my $emsg = "$method: not a valid option key: $key";
        if ($key =~ m/$API_RPC_OPTION_PATTERN/) {
            my $val = $opts->{$key};
            $key =~ s/$API_RPC_OPTION_PATTERN//;
            $rpc_opts{$key} = $val;
        } else {
            my ($type, $multi, $mandatory) = split(':', $opts_types_map{$key});
            if (grep {$key eq $_} @$opts_keys) {
                my $cargs = $self->check_type($opts->{$key}, $type, $multi, $emsg);
                if ($cargs) {
                    $new_opts{$key} = $self->convert(@$cargs);
                } else {
                    # error logged in check_type
                    return;
                }
            } else {
                $self->error("$emsg (allowed ".join(",", @$opts_keys).")");
                return;
            }
        };
    }

    return ($command, \@new_args, \%new_opts, %rpc_opts);
}

package Net::FreeIPA::Request::Common;
use strict;
use warnings;
use parent qw(Net::FreeIPA::Request);

sub new
{
    my ($proto, %args) = @_;
    my $class = ref($proto) || $proto;
    my $self = $class->SUPER::new();
    $self->{_data} = $args{data};
    $self->{_process} = $args{_process};

    bless $self, $class;
    return $self;
}

sub data
{
    my ($self) = @_;
    return @{$self->{_data}} if(ref($self->{_data}) eq 'ARRAY');
    return $self->{_data}->($self) if(ref($self->{_data}) eq 'CODE');
    return ();
}

sub process
{
    my ($self, @args) = @_;
    return $self->{_process}->(@args) if(ref($self->{_process}) eq 'CODE');
    return $self->SUPER::process(@args);
}

1;
