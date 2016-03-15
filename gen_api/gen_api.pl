#!/usr/bin/env perl

use strict;
use warnings;

use Readonly;
use Data::Dumper;


use Cwd qw(abs_path);
use File::Basename qw(dirname basename);


Readonly my $PWD => dirname(abs_path($0));
Readonly my $SCRIPTNAME => basename($0);
Readonly my $DEBUG => $ENV{GEN_API_DEBUG};

Readonly my $API => 'API.txt';
Readonly::Hash my %API_CLASS_MAP => {
    Flag => 'boolean',
    Bool => 'boolean',

    Str => 'string',
    StrEnum => 'string',
    IA5Str => 'string',
    DNParam => 'string',
    File => 'string',
    DeprecatedParam => 'string',
    DNSNameParam => 'string',
    A6Record => 'string',
    AAAARecord => 'string',
    AFSDBRecord => 'string',
    APLRecord => 'string',
    ARecord => 'string',
    CERTRecord => 'string',
    CNAMERecord => 'string',
    DHCIDRecord => 'string',
    DLVRecord => 'string',
    DNAMERecord => 'string',
    DSRecord => 'string',
    TXTRecord => 'string',
    SSHFPRecord => 'string',
    SRVRecord => 'string',
    TLSARecord => 'string',
    NAPTRRecord => 'string',
    MXRecord => 'string',
    HIPRecord => 'string',
    IPSECKEYRecord => 'string',
    KEYRecord => 'string',
    KXRecord => 'string',
    LOCRecord => 'string',
    NSECRecord => 'string',
    NSRecord => 'string',
    PTRRecord => 'string',
    RPRecord => 'string',
    RRSIGRecord => 'string',
    SIGRecord => 'string',
    SPFRecord => 'string',
    Record => 'string',
    Record => 'string',
    Password => 'string',
    OTPTokenKey => 'string',
    DNOrURL => 'string',

    DateTime => 'datetime',

    Bytes => 'bytes',

    Decimal => 'float',

    Int => 'int',
    IntEnum => 'int',

    Entry => 'hashref',

    ListOfEntries => 'arrayref',
    Any => 'arrayref',

    Output => 'output', # do nothing?
    PrimaryKey => 'output', # ?
    ListOfPrimaryKeys => 'output',
};

Readonly my $MODULE_NAME => 'API';

Readonly my $MODULE_HEADER => <<"EOF";
#
# This module is generated with $SCRIPTNAME
# Do not modify.
#

package Net::FreeIPA::$MODULE_NAME;

use strict;
use warnings;

=pod

=head2 Generated API wrapper methods

=over

=cut

EOF

Readonly my $MODULE_FOOTER => <<'EOF';

=pod

=back

=cut

1;
EOF


=head2 Functions

=over

=item parse_api

Read API.txt and convert in hashref with command as key,
and args/opts hashref as value.

=cut

sub parse_api
{

    open FH, "$PWD/$API" || die("Failed to open API $API");
    my $txt  = join('', <FH>);
    close FH;

    my $regex = qr{^command:\s*(?<command>\w+)\s*\n}ms;
    my @raw_api_split = split($regex, $txt);

    # shift first (empty or invalid) entry
    shift(@raw_api_split);

    my %raw_api = @raw_api_split;

    my $api;
    foreach my $command (keys %raw_api) {
        my $res = {
            args => [],
            arg => [],
            option => [],
            output => [],
        };
        foreach my $line (split(/\s*\n\s*/, $raw_api{$command})) {
            if ($line =~ m/^([\w-]+):\s*(.*)/) {
                my $type = $1;
                my $data = $2;

                if ($type eq 'args') {
                    $res->{args} = [split(',', $data)];
                } elsif (grep {$type eq $_} qw(arg option output)) {
                    push(@{$res->{$type}}, parse_api_klass($data));
                }
            }
        };

        $api->{$command} = $res;
    }

    print "Parsed API ", Dumper($api) if $DEBUG;
    return $api;
}

=item parse_api_klass

Parse API class type and name, returns hashref

=cut

sub parse_api_klass
{
    my ($data) = @_;
    my $res;

    if ($data =~ m/^(?<class>\w+)\(\s*['"](?<name>[\w-]+)(?<multi>[?*+])?['"](?<remainder>.*)?\s*\)\s*$/) {
        my $class = $API_CLASS_MAP{$+{class}};
        if ($class) {
            $res->{class} = $class;
            $res->{name} = $+{name};
            $res->{multi} = $+{multi};

            # Not for output
            my @remainder = split(/,\s*(\w+)=/, $+{remainder} || '');

            # shift first (empty or invalid) entry
            my $first = shift(@remainder);
            # TODO: non-empty first is from output related fields


            my %remainder  = @remainder;
            while (my ($k, $v) = each(%remainder)) {
                if($v eq 'False') {
                    $v = 0;
                } elsif ($v eq 'True') {
                    $v = 1;
                } else {
                    # strip any quotes and unicode
                    $v =~ s/^\s*u?(['"])(.*)\1\s*/$2/;
                }
                $res->{remainder}->{$k} = $v;
            }
        } else {
            die("Unknown API class $1 for data $data");
        }
    }
    die("Failed to parse API klass from $data") if not $res;

    return $res;
}


=item add_command

Generate method code for command and its details

=cut

sub add_command
{
    my ($command, $details) = @_;

    # This is ordered
    my @opt_keys = map {$_->{name}} @{$details->{option}};
    my @opt_types = map {$_->{class}} @{$details->{option}};

    my @args = map {$_->{name}} @{$details->{arg}};

    my $arg_pod = "No arguments.\n";
    if (@args) {
        $arg_pod = "Arguments\n\n=over\n\n=item ";
        $arg_pod .= join("\n\n=item ", @args);
        $arg_pod .= "\n\n=back\n";
    }

    my @method_args = qw($self);
    push(@method_args, map {'$'.$_} @args);
    push (@method_args, '%opts') if @opt_keys;

    my $method_arg_txt = join(', ', @method_args);

    # Pass the args and opts as references
    my @rpc_args = ("'$command'");
    # Add arrayref with args
    push(@rpc_args, "[".join(', ', map {'$'.$_} @args)."]");
    # Add arrayref with args types
    push(@rpc_args, "[".join(', ', map {"'$_->{class}'"} @{$details->{arg}})."]");
    # Add options hasref
    push(@rpc_args, @opt_keys ? '\%opts' : '{}');
    # Add generated opt_type_map
    push(@rpc_args, @opt_keys ? '\%opt_type_map' : '{}');


    my $rpc_arg_txt = join(', ', @rpc_args);

    my $opts_check_txt = '';
    my $opt_pod = "No options.\n";
    if (@opt_keys) {
        $opt_pod = "Options\n\n=over\n\n=item ";
        $opt_pod .= join("\n\n=item ", @opt_keys);
        $opt_pod .= "\n\n=back\n";

        $opts_check_txt = <<EOF_OPTS_CHECK;
    my \@opt_keys = qw(@opt_keys);
    foreach my \$key (keys \%opts) {
        if (! grep {\$key eq \$_} \@opt_keys) {
            \$self->error("Not a valid option key: \$key (allowed \@opt_keys)");
            return;
        };
    };
    my \@opt_types = qw(@opt_types);
    my \%opt_type_map;
    # Hash slice to create the map
    \@opt_type_map{\@opt_keys} = \@opt_types;
EOF_OPTS_CHECK
    }

    my $command_name = "api_$command";

    my $txt = <<EOF_METHOD;

=item $command_name

Wrapper method for $command API

=over

=item $arg_pod

=item $opt_pod

=back

=cut

sub $command_name
{
    my ($method_arg_txt) = \@_;

$opts_check_txt

    return \$self->rpc_api($rpc_arg_txt);
}

EOF_METHOD

    print "add_command $command details ".Dumper($details), "\n generated code\n$txt\n" if $DEBUG;

    return $txt;
}


sub make_module
{
    my ($text) = @_;

    my $fn = "$PWD/../lib/Net/FreeIPA/$MODULE_NAME.pm";

    open FH, "> $fn";
    print FH $text;
    close FH;

    print "Created module $fn\n"
}


sub main
{
    my $api = parse_api();

    # Use string concat, otherwise $text becomes a readonly,
    # and adding more text won't work.
    my $text = "".$MODULE_HEADER;

    foreach my $command (sort keys %$api) {
        $text .= add_command($command, $api->{$command});
    }

    $text .= $MODULE_FOOTER;

    make_module($text);
}


main();

=pod

=back

=cut
