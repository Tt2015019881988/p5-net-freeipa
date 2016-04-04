#!/usr/bin/env perl

use strict;
use warnings;

use Readonly;
use Data::Dumper;
use Log::Log4perl qw(get_logger :levels);

BEGIN {
    push(@INC, 'lib');
};

use Net::FreeIPA;
use Template;

use Cwd qw(abs_path);
use File::Basename qw(dirname basename);


Readonly my $GEN_API_DIR => dirname(abs_path($0));

Readonly my $SCRIPT_NAME => basename($0);

Readonly my $MODULE_NAME => 'API';

=head1 SYNOPSIS

Generate the API.pm from JSON API

    GEN_API_DEBUG=1 GEN_API_HOSTNAME=host.example.com ./gen_api/gen_api.pl

=head2 Functions

=over

=item get_api

Get the API from the JSON API.

Args/opts are passed to C<<Net::FreeIPA->new>>
(so at least the hostname should be set).

Return version and commands hashref.

=cut

sub get_api
{

    my ($hostname, %opts) = @_;
    $opts{log} = mklogger();
    my $f = Net::FreeIPA->new($hostname, %opts);
    die("Failed to initialise the rest client") if ! $f->{rc};

    # most recent
    delete $f->{api_version};

    $f->get_api_version() || die("Failed to get api_version ".Dumper($f));
    my $version = $f->{result};
    $f->set_api_version($version);
    
    $f->get_api_commands() || die("Failed to get commands metdata ".Dumper($f));

    return $version, $f->{result};
}


sub mklogger
{
    my $logger = get_logger("Net::FreeIPA");

    if ($ENV{GEN_API_DEBUG}) {
        $logger->level($DEBUG);
    } else {
        $logger->level($INFO);
    };
    my $appender = Log::Log4perl::Appender->new(
        "Log::Log4perl::Appender::Screen",
        mode     => "append",
        );
    my $layout =
        Log::Log4perl::Layout::PatternLayout->new(
            "%d [%p] %F{1}:%L %M - %m%n");
    $appender->layout($layout);
    $logger->add_appender($appender);

    return $logger;
}


my $f = Net::FreeIPA->new();


sub make_module
{
    my ($text) = @_;

    my $fn = "$GEN_API_DIR/../lib/Net/FreeIPA/$MODULE_NAME.pm";

    open FH, "> $fn";
    print FH $text;
    close FH;

    print "Created module $fn\n"
}


sub main
{
    my ($version, $commands) = get_api($ENV{GEN_API_HOSTNAME});

    my $tt = Template->new({
        INCLUDE_PATH => $GEN_API_DIR,
        INTERPOLATE  => 1,
    }) || die "$Template::ERROR\n";

    my $vars = {
        prefix => $Net::FreeIPA::Convert::API_METHOD_PREFIX,
        version => $version,
        commands => $commands,
        module_name => $MODULE_NAME,
        script_name => $SCRIPT_NAME,
        join_name => sub {my $args = shift; return join(' ', map {$_->{name}} @$args); },
        join_name_vars => sub {my $args = shift; return join(', ', map {'$'.$_->{name}} @$args)},
        join_type => sub {my $args = shift; return join(' ', map {$_->{type}} @$args) },
        ref => sub {return ref(shift) },
        check_hash => sub {
            my $array = shift;
            my @newarray;
            foreach my $el (@$array) {
                if (ref($el) eq '') {
                    my $oldel = $el;
                    $oldel =~ s/[*+?]$//;
                    $el = {
                        name => $oldel,
                        type => 'unknown',
                        class => 'unknown',
                        doc => 'unknown',
                    };
                }
                push(@newarray, $el);
            };
            return \@newarray;
        }
    };

    my $text = '';
    $tt->process('api.tt', $vars, \$text)
        || die $tt->error(), "\n";

    make_module($text);
}


main();

=pod

=back

=cut
