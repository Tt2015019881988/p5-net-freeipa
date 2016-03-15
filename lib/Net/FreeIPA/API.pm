#
# This module is generated with gen_api.pl
# Do not modify.
#

package Net::FreeIPA::API;

use strict;
use warnings;

=pod

=head2 Generated API wrapper methods

=over

=cut


=item api_aci_add

Wrapper method for aci_add API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item aciprefix

=item all

=item attrs

=item filter

=item group

=item memberof

=item permission

=item permissions

=item raw

=item selfaci

=item subtree

=item targetgroup

=item test

=item type

=item version

=back


=back

=cut

sub api_aci_add
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(aciprefix all attrs filter group memberof permission permissions raw selfaci subtree targetgroup test type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string boolean boolean string string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('aci_add', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_aci_del

Wrapper method for aci_del API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item aciprefix

=item version

=back


=back

=cut

sub api_aci_del
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(aciprefix version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('aci_del', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_aci_find

Wrapper method for aci_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item aciname

=item aciprefix

=item all

=item attrs

=item filter

=item group

=item memberof

=item permission

=item permissions

=item pkey_only

=item raw

=item selfaci

=item subtree

=item targetgroup

=item type

=item version

=back


=back

=cut

sub api_aci_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(aciname aciprefix all attrs filter group memberof permission permissions pkey_only raw selfaci subtree targetgroup type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string boolean string string string string string string boolean boolean boolean string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('aci_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_aci_mod

Wrapper method for aci_mod API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item aciprefix

=item all

=item attrs

=item filter

=item group

=item memberof

=item permission

=item permissions

=item raw

=item selfaci

=item subtree

=item targetgroup

=item type

=item version

=back


=back

=cut

sub api_aci_mod
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(aciprefix all attrs filter group memberof permission permissions raw selfaci subtree targetgroup type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string boolean boolean string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('aci_mod', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_aci_rename

Wrapper method for aci_rename API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item aciprefix

=item all

=item attrs

=item filter

=item group

=item memberof

=item newname

=item permission

=item permissions

=item raw

=item selfaci

=item subtree

=item targetgroup

=item type

=item version

=back


=back

=cut

sub api_aci_rename
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(aciprefix all attrs filter group memberof newname permission permissions raw selfaci subtree targetgroup type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string string boolean boolean string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('aci_rename', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_aci_show

Wrapper method for aci_show API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item aciprefix

=item all

=item location

=item raw

=item version

=back


=back

=cut

sub api_aci_show
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(aciprefix all location raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('aci_show', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_adtrust_is_enabled

Wrapper method for adtrust_is_enabled API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_adtrust_is_enabled
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('adtrust_is_enabled', [], [], \%opts, \%opt_type_map);
}


=item api_automember_add

Wrapper method for automember_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item raw

=item setattr

=item type

=item version

=back


=back

=cut

sub api_automember_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description raw setattr type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automember_add_condition

Wrapper method for automember_add_condition API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item automemberexclusiveregex

=item automemberinclusiveregex

=item description

=item key

=item raw

=item type

=item version

=back


=back

=cut

sub api_automember_add_condition
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all automemberexclusiveregex automemberinclusiveregex description key raw type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_add_condition', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automember_default_group_remove

Wrapper method for automember_default_group_remove API

=over

=item No arguments.


=item Options

=over

=item all

=item description

=item raw

=item type

=item version

=back


=back

=cut

sub api_automember_default_group_remove
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all description raw type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_default_group_remove', [], [], \%opts, \%opt_type_map);
}


=item api_automember_default_group_set

Wrapper method for automember_default_group_set API

=over

=item No arguments.


=item Options

=over

=item all

=item automemberdefaultgroup

=item description

=item raw

=item type

=item version

=back


=back

=cut

sub api_automember_default_group_set
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all automemberdefaultgroup description raw type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_default_group_set', [], [], \%opts, \%opt_type_map);
}


=item api_automember_default_group_show

Wrapper method for automember_default_group_show API

=over

=item No arguments.


=item Options

=over

=item all

=item raw

=item type

=item version

=back


=back

=cut

sub api_automember_default_group_show
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all raw type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_default_group_show', [], [], \%opts, \%opt_type_map);
}


=item api_automember_del

Wrapper method for automember_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item type

=item version

=back


=back

=cut

sub api_automember_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automember_find

Wrapper method for automember_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item description

=item raw

=item type

=item version

=back


=back

=cut

sub api_automember_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all description raw type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_automember_mod

Wrapper method for automember_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item raw

=item rights

=item setattr

=item type

=item version

=back


=back

=cut

sub api_automember_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description raw rights setattr type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automember_rebuild

Wrapper method for automember_rebuild API

=over

=item No arguments.


=item Options

=over

=item all

=item hosts

=item no_wait

=item raw

=item type

=item users

=item version

=back


=back

=cut

sub api_automember_rebuild
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all hosts no_wait raw type users version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_rebuild', [], [], \%opts, \%opt_type_map);
}


=item api_automember_remove_condition

Wrapper method for automember_remove_condition API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item automemberexclusiveregex

=item automemberinclusiveregex

=item description

=item key

=item raw

=item type

=item version

=back


=back

=cut

sub api_automember_remove_condition
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all automemberexclusiveregex automemberinclusiveregex description key raw type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_remove_condition', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automember_show

Wrapper method for automember_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item type

=item version

=back


=back

=cut

sub api_automember_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automember_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automountkey_add

Wrapper method for automountkey_add API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapautomountmapname

=back


=item Options

=over

=item addattr

=item all

=item automountinformation

=item automountkey

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_automountkey_add
{
    my ($self, $automountlocationcn, $automountmapautomountmapname, %opts) = @_;

    my @opt_keys = qw(addattr all automountinformation automountkey raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountkey_add', [$automountlocationcn, $automountmapautomountmapname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountkey_del

Wrapper method for automountkey_del API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapautomountmapname

=back


=item Options

=over

=item automountinformation

=item automountkey

=item continue

=item version

=back


=back

=cut

sub api_automountkey_del
{
    my ($self, $automountlocationcn, $automountmapautomountmapname, %opts) = @_;

    my @opt_keys = qw(automountinformation automountkey continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountkey_del', [$automountlocationcn, $automountmapautomountmapname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountkey_find

Wrapper method for automountkey_find API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapautomountmapname

=item criteria

=back


=item Options

=over

=item all

=item automountinformation

=item automountkey

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_automountkey_find
{
    my ($self, $automountlocationcn, $automountmapautomountmapname, $criteria, %opts) = @_;

    my @opt_keys = qw(all automountinformation automountkey raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountkey_find', [$automountlocationcn, $automountmapautomountmapname, $criteria], ['string', 'string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountkey_mod

Wrapper method for automountkey_mod API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapautomountmapname

=back


=item Options

=over

=item addattr

=item all

=item automountinformation

=item automountkey

=item delattr

=item newautomountinformation

=item raw

=item rename

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_automountkey_mod
{
    my ($self, $automountlocationcn, $automountmapautomountmapname, %opts) = @_;

    my @opt_keys = qw(addattr all automountinformation automountkey delattr newautomountinformation raw rename rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountkey_mod', [$automountlocationcn, $automountmapautomountmapname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountkey_show

Wrapper method for automountkey_show API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapautomountmapname

=back


=item Options

=over

=item all

=item automountinformation

=item automountkey

=item raw

=item rights

=item version

=back


=back

=cut

sub api_automountkey_show
{
    my ($self, $automountlocationcn, $automountmapautomountmapname, %opts) = @_;

    my @opt_keys = qw(all automountinformation automountkey raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountkey_show', [$automountlocationcn, $automountmapautomountmapname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountlocation_add

Wrapper method for automountlocation_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_automountlocation_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountlocation_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automountlocation_del

Wrapper method for automountlocation_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_automountlocation_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountlocation_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automountlocation_find

Wrapper method for automountlocation_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_automountlocation_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountlocation_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_automountlocation_import

Wrapper method for automountlocation_import API

=over

=item Arguments

=over

=item cn

=item masterfile

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_automountlocation_import
{
    my ($self, $cn, $masterfile, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountlocation_import', [$cn, $masterfile], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountlocation_show

Wrapper method for automountlocation_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_automountlocation_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountlocation_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automountlocation_tofiles

Wrapper method for automountlocation_tofiles API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_automountlocation_tofiles
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountlocation_tofiles', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_automountmap_add

Wrapper method for automountmap_add API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapname

=back


=item Options

=over

=item addattr

=item all

=item description

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_automountmap_add
{
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;

    my @opt_keys = qw(addattr all description raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountmap_add', [$automountlocationcn, $automountmapname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountmap_add_indirect

Wrapper method for automountmap_add_indirect API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapname

=back


=item Options

=over

=item addattr

=item all

=item description

=item key

=item parentmap

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_automountmap_add_indirect
{
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;

    my @opt_keys = qw(addattr all description key parentmap raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountmap_add_indirect', [$automountlocationcn, $automountmapname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountmap_del

Wrapper method for automountmap_del API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapname

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_automountmap_del
{
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountmap_del', [$automountlocationcn, $automountmapname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountmap_find

Wrapper method for automountmap_find API

=over

=item Arguments

=over

=item automountlocationcn

=item criteria

=back


=item Options

=over

=item all

=item automountmapname

=item description

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_automountmap_find
{
    my ($self, $automountlocationcn, $criteria, %opts) = @_;

    my @opt_keys = qw(all automountmapname description pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountmap_find', [$automountlocationcn, $criteria], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountmap_mod

Wrapper method for automountmap_mod API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapname

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_automountmap_mod
{
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountmap_mod', [$automountlocationcn, $automountmapname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_automountmap_show

Wrapper method for automountmap_show API

=over

=item Arguments

=over

=item automountlocationcn

=item automountmapname

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_automountmap_show
{
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('automountmap_show', [$automountlocationcn, $automountmapname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_batch

Wrapper method for batch API

=over

=item Arguments

=over

=item methods

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_batch
{
    my ($self, $methods, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('batch', [$methods], ['arrayref'], \%opts, \%opt_type_map);
}


=item api_ca_is_enabled

Wrapper method for ca_is_enabled API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_ca_is_enabled
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('ca_is_enabled', [], [], \%opts, \%opt_type_map);
}


=item api_caacl_add

Wrapper method for caacl_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item hostcategory

=item ipacertprofilecategory

=item ipaenabledflag

=item no_members

=item raw

=item servicecategory

=item setattr

=item usercategory

=item version

=back


=back

=cut

sub api_caacl_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description hostcategory ipacertprofilecategory ipaenabledflag no_members raw servicecategory setattr usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string boolean boolean boolean string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_add_host

Wrapper method for caacl_add_host API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_caacl_add_host
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_add_host', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_add_profile

Wrapper method for caacl_add_profile API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item certprofile

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_caacl_add_profile
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all certprofile no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_add_profile', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_add_service

Wrapper method for caacl_add_service API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item service

=item version

=back


=back

=cut

sub api_caacl_add_service
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw service version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_add_service', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_add_user

Wrapper method for caacl_add_user API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_caacl_add_user
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_add_user', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_del

Wrapper method for caacl_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_caacl_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_disable

Wrapper method for caacl_disable API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_caacl_disable
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_disable', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_enable

Wrapper method for caacl_enable API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_caacl_enable
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_enable', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_find

Wrapper method for caacl_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item hostcategory

=item ipacertprofilecategory

=item ipaenabledflag

=item no_members

=item pkey_only

=item raw

=item servicecategory

=item sizelimit

=item timelimit

=item usercategory

=item version

=back


=back

=cut

sub api_caacl_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description hostcategory ipacertprofilecategory ipaenabledflag no_members pkey_only raw servicecategory sizelimit timelimit usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string boolean boolean boolean boolean string int int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_mod

Wrapper method for caacl_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item hostcategory

=item ipacertprofilecategory

=item ipaenabledflag

=item no_members

=item raw

=item rights

=item servicecategory

=item setattr

=item usercategory

=item version

=back


=back

=cut

sub api_caacl_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description hostcategory ipacertprofilecategory ipaenabledflag no_members raw rights servicecategory setattr usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string boolean boolean boolean boolean string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_remove_host

Wrapper method for caacl_remove_host API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_caacl_remove_host
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_remove_host', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_remove_profile

Wrapper method for caacl_remove_profile API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item certprofile

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_caacl_remove_profile
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all certprofile no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_remove_profile', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_remove_service

Wrapper method for caacl_remove_service API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item service

=item version

=back


=back

=cut

sub api_caacl_remove_service
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw service version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_remove_service', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_remove_user

Wrapper method for caacl_remove_user API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_caacl_remove_user
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_remove_user', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_caacl_show

Wrapper method for caacl_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_caacl_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('caacl_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_cert_find

Wrapper method for cert_find API

=over

=item No arguments.


=item Options

=over

=item all

=item exactly

=item issuedon_from

=item issuedon_to

=item max_serial_number

=item min_serial_number

=item raw

=item revocation_reason

=item revokedon_from

=item revokedon_to

=item sizelimit

=item subject

=item validnotafter_from

=item validnotafter_to

=item validnotbefore_from

=item validnotbefore_to

=item version

=back


=back

=cut

sub api_cert_find
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all exactly issuedon_from issuedon_to max_serial_number min_serial_number raw revocation_reason revokedon_from revokedon_to sizelimit subject validnotafter_from validnotafter_to validnotbefore_from validnotbefore_to version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string string int int boolean int string string int string string string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cert_find', [], [], \%opts, \%opt_type_map);
}


=item api_cert_remove_hold

Wrapper method for cert_remove_hold API

=over

=item Arguments

=over

=item serial_number

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_cert_remove_hold
{
    my ($self, $serial_number, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cert_remove_hold', [$serial_number], ['string'], \%opts, \%opt_type_map);
}


=item api_cert_request

Wrapper method for cert_request API

=over

=item Arguments

=over

=item csr

=back


=item Options

=over

=item add

=item principal

=item profile_id

=item request_type

=item version

=back


=back

=cut

sub api_cert_request
{
    my ($self, $csr, %opts) = @_;

    my @opt_keys = qw(add principal profile_id request_type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cert_request', [$csr], ['string'], \%opts, \%opt_type_map);
}


=item api_cert_revoke

Wrapper method for cert_revoke API

=over

=item Arguments

=over

=item serial_number

=back


=item Options

=over

=item revocation_reason

=item version

=back


=back

=cut

sub api_cert_revoke
{
    my ($self, $serial_number, %opts) = @_;

    my @opt_keys = qw(revocation_reason version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cert_revoke', [$serial_number], ['string'], \%opts, \%opt_type_map);
}


=item api_cert_show

Wrapper method for cert_show API

=over

=item Arguments

=over

=item serial_number

=back


=item Options

=over

=item out

=item version

=back


=back

=cut

sub api_cert_show
{
    my ($self, $serial_number, %opts) = @_;

    my @opt_keys = qw(out version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cert_show', [$serial_number], ['string'], \%opts, \%opt_type_map);
}


=item api_cert_status

Wrapper method for cert_status API

=over

=item Arguments

=over

=item request_id

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_cert_status
{
    my ($self, $request_id, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cert_status', [$request_id], ['string'], \%opts, \%opt_type_map);
}


=item api_certprofile_del

Wrapper method for certprofile_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_certprofile_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('certprofile_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_certprofile_find

Wrapper method for certprofile_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item ipacertprofilestoreissued

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_certprofile_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description ipacertprofilestoreissued pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('certprofile_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_certprofile_import

Wrapper method for certprofile_import API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item description

=item file

=item ipacertprofilestoreissued

=item raw

=item version

=back


=back

=cut

sub api_certprofile_import
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all description file ipacertprofilestoreissued raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('certprofile_import', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_certprofile_mod

Wrapper method for certprofile_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item file

=item ipacertprofilestoreissued

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_certprofile_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description file ipacertprofilestoreissued raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('certprofile_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_certprofile_show

Wrapper method for certprofile_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item out

=item raw

=item rights

=item version

=back


=back

=cut

sub api_certprofile_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all out raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('certprofile_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_compat_is_enabled

Wrapper method for compat_is_enabled API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_compat_is_enabled
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('compat_is_enabled', [], [], \%opts, \%opt_type_map);
}


=item api_config_mod

Wrapper method for config_mod API

=over

=item No arguments.


=item Options

=over

=item addattr

=item all

=item delattr

=item ipaconfigstring

=item ipadefaultemaildomain

=item ipadefaultloginshell

=item ipadefaultprimarygroup

=item ipagroupobjectclasses

=item ipagroupsearchfields

=item ipahomesrootdir

=item ipakrbauthzdata

=item ipamaxusernamelength

=item ipamigrationenabled

=item ipapwdexpadvnotify

=item ipasearchrecordslimit

=item ipasearchtimelimit

=item ipaselinuxusermapdefault

=item ipaselinuxusermaporder

=item ipauserauthtype

=item ipauserobjectclasses

=item ipausersearchfields

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_config_mod
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(addattr all delattr ipaconfigstring ipadefaultemaildomain ipadefaultloginshell ipadefaultprimarygroup ipagroupobjectclasses ipagroupsearchfields ipahomesrootdir ipakrbauthzdata ipamaxusernamelength ipamigrationenabled ipapwdexpadvnotify ipasearchrecordslimit ipasearchtimelimit ipaselinuxusermapdefault ipaselinuxusermaporder ipauserauthtype ipauserobjectclasses ipausersearchfields raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string string string string int boolean int int int string string string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('config_mod', [], [], \%opts, \%opt_type_map);
}


=item api_config_show

Wrapper method for config_show API

=over

=item No arguments.


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_config_show
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('config_show', [], [], \%opts, \%opt_type_map);
}


=item api_cosentry_add

Wrapper method for cosentry_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item cospriority

=item krbpwdpolicyreference

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_cosentry_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all cospriority krbpwdpolicyreference raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean int string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cosentry_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_cosentry_del

Wrapper method for cosentry_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_cosentry_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cosentry_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_cosentry_find

Wrapper method for cosentry_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item cospriority

=item krbpwdpolicyreference

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_cosentry_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn cospriority krbpwdpolicyreference pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string int string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cosentry_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_cosentry_mod

Wrapper method for cosentry_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item cospriority

=item delattr

=item krbpwdpolicyreference

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_cosentry_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all cospriority delattr krbpwdpolicyreference raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean int string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cosentry_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_cosentry_show

Wrapper method for cosentry_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_cosentry_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('cosentry_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_delegation_add

Wrapper method for delegation_add API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item all

=item attrs

=item group

=item memberof

=item permissions

=item raw

=item version

=back


=back

=cut

sub api_delegation_add
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(all attrs group memberof permissions raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('delegation_add', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_delegation_del

Wrapper method for delegation_del API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_delegation_del
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('delegation_del', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_delegation_find

Wrapper method for delegation_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item aciname

=item all

=item attrs

=item group

=item memberof

=item permissions

=item pkey_only

=item raw

=item version

=back


=back

=cut

sub api_delegation_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(aciname all attrs group memberof permissions pkey_only raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('delegation_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_delegation_mod

Wrapper method for delegation_mod API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item all

=item attrs

=item group

=item memberof

=item permissions

=item raw

=item version

=back


=back

=cut

sub api_delegation_mod
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(all attrs group memberof permissions raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('delegation_mod', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_delegation_show

Wrapper method for delegation_show API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item all

=item raw

=item version

=back


=back

=cut

sub api_delegation_show
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(all raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('delegation_show', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_dns_is_enabled

Wrapper method for dns_is_enabled API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_dns_is_enabled
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dns_is_enabled', [], [], \%opts, \%opt_type_map);
}


=item api_dns_resolve

Wrapper method for dns_resolve API

=over

=item Arguments

=over

=item hostname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_dns_resolve
{
    my ($self, $hostname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dns_resolve', [$hostname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsconfig_mod

Wrapper method for dnsconfig_mod API

=over

=item No arguments.


=item Options

=over

=item addattr

=item all

=item delattr

=item idnsallowsyncptr

=item idnsforwarders

=item idnsforwardpolicy

=item idnszonerefresh

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_dnsconfig_mod
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(addattr all delattr idnsallowsyncptr idnsforwarders idnsforwardpolicy idnszonerefresh raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsconfig_mod', [], [], \%opts, \%opt_type_map);
}


=item api_dnsconfig_show

Wrapper method for dnsconfig_show API

=over

=item No arguments.


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_dnsconfig_show
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsconfig_show', [], [], \%opts, \%opt_type_map);
}


=item api_dnsforwardzone_add

Wrapper method for dnsforwardzone_add API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item addattr

=item all

=item idnsforwarders

=item idnsforwardpolicy

=item name_from_ip

=item raw

=item setattr

=item skip_overlap_check

=item version

=back


=back

=cut

sub api_dnsforwardzone_add
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(addattr all idnsforwarders idnsforwardpolicy name_from_ip raw setattr skip_overlap_check version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsforwardzone_add', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsforwardzone_add_permission

Wrapper method for dnsforwardzone_add_permission API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_dnsforwardzone_add_permission
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsforwardzone_add_permission', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsforwardzone_del

Wrapper method for dnsforwardzone_del API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_dnsforwardzone_del
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsforwardzone_del', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsforwardzone_disable

Wrapper method for dnsforwardzone_disable API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_dnsforwardzone_disable
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsforwardzone_disable', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsforwardzone_enable

Wrapper method for dnsforwardzone_enable API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_dnsforwardzone_enable
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsforwardzone_enable', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsforwardzone_find

Wrapper method for dnsforwardzone_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item idnsforwarders

=item idnsforwardpolicy

=item idnsname

=item idnszoneactive

=item name_from_ip

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_dnsforwardzone_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all idnsforwarders idnsforwardpolicy idnsname idnszoneactive name_from_ip pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsforwardzone_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsforwardzone_mod

Wrapper method for dnsforwardzone_mod API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item idnsforwarders

=item idnsforwardpolicy

=item name_from_ip

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_dnsforwardzone_mod
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(addattr all delattr idnsforwarders idnsforwardpolicy name_from_ip raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsforwardzone_mod', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsforwardzone_remove_permission

Wrapper method for dnsforwardzone_remove_permission API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_dnsforwardzone_remove_permission
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsforwardzone_remove_permission', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsforwardzone_show

Wrapper method for dnsforwardzone_show API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_dnsforwardzone_show
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsforwardzone_show', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnsrecord_add

Wrapper method for dnsrecord_add API

=over

=item Arguments

=over

=item dnszoneidnsname

=item idnsname

=back


=item Options

=over

=item a6_part_data

=item a6record

=item a_extra_create_reverse

=item a_part_ip_address

=item aaaa_extra_create_reverse

=item aaaa_part_ip_address

=item aaaarecord

=item addattr

=item afsdb_part_hostname

=item afsdb_part_subtype

=item afsdbrecord

=item all

=item aplrecord

=item arecord

=item cert_part_algorithm

=item cert_part_certificate_or_crl

=item cert_part_key_tag

=item cert_part_type

=item certrecord

=item cname_part_hostname

=item cnamerecord

=item dhcidrecord

=item dlv_part_algorithm

=item dlv_part_digest

=item dlv_part_digest_type

=item dlv_part_key_tag

=item dlvrecord

=item dname_part_target

=item dnamerecord

=item dnsclass

=item dnsttl

=item ds_part_algorithm

=item ds_part_digest

=item ds_part_digest_type

=item ds_part_key_tag

=item dsrecord

=item force

=item hiprecord

=item ipseckeyrecord

=item keyrecord

=item kx_part_exchanger

=item kx_part_preference

=item kxrecord

=item loc_part_altitude

=item loc_part_h_precision

=item loc_part_lat_deg

=item loc_part_lat_dir

=item loc_part_lat_min

=item loc_part_lat_sec

=item loc_part_lon_deg

=item loc_part_lon_dir

=item loc_part_lon_min

=item loc_part_lon_sec

=item loc_part_size

=item loc_part_v_precision

=item locrecord

=item mx_part_exchanger

=item mx_part_preference

=item mxrecord

=item naptr_part_flags

=item naptr_part_order

=item naptr_part_preference

=item naptr_part_regexp

=item naptr_part_replacement

=item naptr_part_service

=item naptrrecord

=item ns_part_hostname

=item nsecrecord

=item nsrecord

=item ptr_part_hostname

=item ptrrecord

=item raw

=item rprecord

=item rrsigrecord

=item setattr

=item sigrecord

=item spfrecord

=item srv_part_port

=item srv_part_priority

=item srv_part_target

=item srv_part_weight

=item srvrecord

=item sshfp_part_algorithm

=item sshfp_part_fingerprint

=item sshfp_part_fp_type

=item sshfprecord

=item structured

=item tlsa_part_cert_association_data

=item tlsa_part_cert_usage

=item tlsa_part_matching_type

=item tlsa_part_selector

=item tlsarecord

=item txt_part_data

=item txtrecord

=item version

=back


=back

=cut

sub api_dnsrecord_add
{
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;

    my @opt_keys = qw(a6_part_data a6record a_extra_create_reverse a_part_ip_address aaaa_extra_create_reverse aaaa_part_ip_address aaaarecord addattr afsdb_part_hostname afsdb_part_subtype afsdbrecord all aplrecord arecord cert_part_algorithm cert_part_certificate_or_crl cert_part_key_tag cert_part_type certrecord cname_part_hostname cnamerecord dhcidrecord dlv_part_algorithm dlv_part_digest dlv_part_digest_type dlv_part_key_tag dlvrecord dname_part_target dnamerecord dnsclass dnsttl ds_part_algorithm ds_part_digest ds_part_digest_type ds_part_key_tag dsrecord force hiprecord ipseckeyrecord keyrecord kx_part_exchanger kx_part_preference kxrecord loc_part_altitude loc_part_h_precision loc_part_lat_deg loc_part_lat_dir loc_part_lat_min loc_part_lat_sec loc_part_lon_deg loc_part_lon_dir loc_part_lon_min loc_part_lon_sec loc_part_size loc_part_v_precision locrecord mx_part_exchanger mx_part_preference mxrecord naptr_part_flags naptr_part_order naptr_part_preference naptr_part_regexp naptr_part_replacement naptr_part_service naptrrecord ns_part_hostname nsecrecord nsrecord ptr_part_hostname ptrrecord raw rprecord rrsigrecord setattr sigrecord spfrecord srv_part_port srv_part_priority srv_part_target srv_part_weight srvrecord sshfp_part_algorithm sshfp_part_fingerprint sshfp_part_fp_type sshfprecord structured tlsa_part_cert_association_data tlsa_part_cert_usage tlsa_part_matching_type tlsa_part_selector tlsarecord txt_part_data txtrecord version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string boolean string boolean string string string string int string boolean string string int string int int string string string string int string int int string string string string int int string int int string boolean string string string string int string float float int string int float int string int float float float string string int string string int int string string string string string string string string string boolean string string string string string int int string int string int string int string boolean string int int int string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsrecord_add', [$dnszoneidnsname, $idnsname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_dnsrecord_del

Wrapper method for dnsrecord_del API

=over

=item Arguments

=over

=item dnszoneidnsname

=item idnsname

=back


=item Options

=over

=item a6record

=item aaaarecord

=item afsdbrecord

=item aplrecord

=item arecord

=item certrecord

=item cnamerecord

=item del_all

=item dhcidrecord

=item dlvrecord

=item dnamerecord

=item dnsclass

=item dnsttl

=item dsrecord

=item hiprecord

=item ipseckeyrecord

=item keyrecord

=item kxrecord

=item locrecord

=item mxrecord

=item naptrrecord

=item nsecrecord

=item nsrecord

=item ptrrecord

=item rprecord

=item rrsigrecord

=item sigrecord

=item spfrecord

=item srvrecord

=item sshfprecord

=item structured

=item tlsarecord

=item txtrecord

=item version

=back


=back

=cut

sub api_dnsrecord_del
{
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;

    my @opt_keys = qw(a6record aaaarecord afsdbrecord aplrecord arecord certrecord cnamerecord del_all dhcidrecord dlvrecord dnamerecord dnsclass dnsttl dsrecord hiprecord ipseckeyrecord keyrecord kxrecord locrecord mxrecord naptrrecord nsecrecord nsrecord ptrrecord rprecord rrsigrecord sigrecord spfrecord srvrecord sshfprecord structured tlsarecord txtrecord version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string string string string string string boolean string string string string int string string string string string string string string string string string string string string string string string boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsrecord_del', [$dnszoneidnsname, $idnsname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_dnsrecord_delentry

Wrapper method for dnsrecord_delentry API

=over

=item Arguments

=over

=item dnszoneidnsname

=item idnsname

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_dnsrecord_delentry
{
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsrecord_delentry', [$dnszoneidnsname, $idnsname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_dnsrecord_find

Wrapper method for dnsrecord_find API

=over

=item Arguments

=over

=item dnszoneidnsname

=item criteria

=back


=item Options

=over

=item a6record

=item aaaarecord

=item afsdbrecord

=item all

=item aplrecord

=item arecord

=item certrecord

=item cnamerecord

=item dhcidrecord

=item dlvrecord

=item dnamerecord

=item dnsclass

=item dnsttl

=item dsrecord

=item hiprecord

=item idnsname

=item ipseckeyrecord

=item keyrecord

=item kxrecord

=item locrecord

=item mxrecord

=item naptrrecord

=item nsecrecord

=item nsrecord

=item pkey_only

=item ptrrecord

=item raw

=item rprecord

=item rrsigrecord

=item sigrecord

=item sizelimit

=item spfrecord

=item srvrecord

=item sshfprecord

=item structured

=item timelimit

=item tlsarecord

=item txtrecord

=item version

=back


=back

=cut

sub api_dnsrecord_find
{
    my ($self, $dnszoneidnsname, $criteria, %opts) = @_;

    my @opt_keys = qw(a6record aaaarecord afsdbrecord all aplrecord arecord certrecord cnamerecord dhcidrecord dlvrecord dnamerecord dnsclass dnsttl dsrecord hiprecord idnsname ipseckeyrecord keyrecord kxrecord locrecord mxrecord naptrrecord nsecrecord nsrecord pkey_only ptrrecord raw rprecord rrsigrecord sigrecord sizelimit spfrecord srvrecord sshfprecord structured timelimit tlsarecord txtrecord version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string string boolean string string string string string string string string int string string string string string string string string string string string boolean string boolean string string string int string string string boolean int string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsrecord_find', [$dnszoneidnsname, $criteria], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_dnsrecord_mod

Wrapper method for dnsrecord_mod API

=over

=item Arguments

=over

=item dnszoneidnsname

=item idnsname

=back


=item Options

=over

=item a6_part_data

=item a6record

=item a_part_ip_address

=item aaaa_part_ip_address

=item aaaarecord

=item addattr

=item afsdb_part_hostname

=item afsdb_part_subtype

=item afsdbrecord

=item all

=item aplrecord

=item arecord

=item cert_part_algorithm

=item cert_part_certificate_or_crl

=item cert_part_key_tag

=item cert_part_type

=item certrecord

=item cname_part_hostname

=item cnamerecord

=item delattr

=item dhcidrecord

=item dlv_part_algorithm

=item dlv_part_digest

=item dlv_part_digest_type

=item dlv_part_key_tag

=item dlvrecord

=item dname_part_target

=item dnamerecord

=item dnsclass

=item dnsttl

=item ds_part_algorithm

=item ds_part_digest

=item ds_part_digest_type

=item ds_part_key_tag

=item dsrecord

=item hiprecord

=item ipseckeyrecord

=item keyrecord

=item kx_part_exchanger

=item kx_part_preference

=item kxrecord

=item loc_part_altitude

=item loc_part_h_precision

=item loc_part_lat_deg

=item loc_part_lat_dir

=item loc_part_lat_min

=item loc_part_lat_sec

=item loc_part_lon_deg

=item loc_part_lon_dir

=item loc_part_lon_min

=item loc_part_lon_sec

=item loc_part_size

=item loc_part_v_precision

=item locrecord

=item mx_part_exchanger

=item mx_part_preference

=item mxrecord

=item naptr_part_flags

=item naptr_part_order

=item naptr_part_preference

=item naptr_part_regexp

=item naptr_part_replacement

=item naptr_part_service

=item naptrrecord

=item ns_part_hostname

=item nsecrecord

=item nsrecord

=item ptr_part_hostname

=item ptrrecord

=item raw

=item rename

=item rights

=item rprecord

=item rrsigrecord

=item setattr

=item sigrecord

=item spfrecord

=item srv_part_port

=item srv_part_priority

=item srv_part_target

=item srv_part_weight

=item srvrecord

=item sshfp_part_algorithm

=item sshfp_part_fingerprint

=item sshfp_part_fp_type

=item sshfprecord

=item structured

=item tlsa_part_cert_association_data

=item tlsa_part_cert_usage

=item tlsa_part_matching_type

=item tlsa_part_selector

=item tlsarecord

=item txt_part_data

=item txtrecord

=item version

=back


=back

=cut

sub api_dnsrecord_mod
{
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;

    my @opt_keys = qw(a6_part_data a6record a_part_ip_address aaaa_part_ip_address aaaarecord addattr afsdb_part_hostname afsdb_part_subtype afsdbrecord all aplrecord arecord cert_part_algorithm cert_part_certificate_or_crl cert_part_key_tag cert_part_type certrecord cname_part_hostname cnamerecord delattr dhcidrecord dlv_part_algorithm dlv_part_digest dlv_part_digest_type dlv_part_key_tag dlvrecord dname_part_target dnamerecord dnsclass dnsttl ds_part_algorithm ds_part_digest ds_part_digest_type ds_part_key_tag dsrecord hiprecord ipseckeyrecord keyrecord kx_part_exchanger kx_part_preference kxrecord loc_part_altitude loc_part_h_precision loc_part_lat_deg loc_part_lat_dir loc_part_lat_min loc_part_lat_sec loc_part_lon_deg loc_part_lon_dir loc_part_lon_min loc_part_lon_sec loc_part_size loc_part_v_precision locrecord mx_part_exchanger mx_part_preference mxrecord naptr_part_flags naptr_part_order naptr_part_preference naptr_part_regexp naptr_part_replacement naptr_part_service naptrrecord ns_part_hostname nsecrecord nsrecord ptr_part_hostname ptrrecord raw rename rights rprecord rrsigrecord setattr sigrecord spfrecord srv_part_port srv_part_priority srv_part_target srv_part_weight srvrecord sshfp_part_algorithm sshfp_part_fingerprint sshfp_part_fp_type sshfprecord structured tlsa_part_cert_association_data tlsa_part_cert_usage tlsa_part_matching_type tlsa_part_selector tlsarecord txt_part_data txtrecord version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string string string string string string int string boolean string string int string int int string string string string string int string int int string string string string int int string int int string string string string string int string float float int string int float int string int float float float string string int string string int int string string string string string string string string string boolean string boolean string string string string string int int string int string int string int string boolean string int int int string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsrecord_mod', [$dnszoneidnsname, $idnsname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_dnsrecord_show

Wrapper method for dnsrecord_show API

=over

=item Arguments

=over

=item dnszoneidnsname

=item idnsname

=back


=item Options

=over

=item all

=item raw

=item rights

=item structured

=item version

=back


=back

=cut

sub api_dnsrecord_show
{
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;

    my @opt_keys = qw(all raw rights structured version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnsrecord_show', [$dnszoneidnsname, $idnsname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_dnszone_add

Wrapper method for dnszone_add API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item addattr

=item all

=item dnsclass

=item dnsttl

=item force

=item idnsallowdynupdate

=item idnsallowquery

=item idnsallowsyncptr

=item idnsallowtransfer

=item idnsforwarders

=item idnsforwardpolicy

=item idnssecinlinesigning

=item idnssoaexpire

=item idnssoaminimum

=item idnssoamname

=item idnssoarefresh

=item idnssoaretry

=item idnssoarname

=item idnssoaserial

=item idnsupdatepolicy

=item ip_address

=item name_from_ip

=item nsec3paramrecord

=item raw

=item setattr

=item skip_nameserver_check

=item skip_overlap_check

=item version

=back


=back

=cut

sub api_dnszone_add
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(addattr all dnsclass dnsttl force idnsallowdynupdate idnsallowquery idnsallowsyncptr idnsallowtransfer idnsforwarders idnsforwardpolicy idnssecinlinesigning idnssoaexpire idnssoaminimum idnssoamname idnssoarefresh idnssoaretry idnssoarname idnssoaserial idnsupdatepolicy ip_address name_from_ip nsec3paramrecord raw setattr skip_nameserver_check skip_overlap_check version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string int boolean boolean string boolean string string string boolean int int string int int string int string string string string boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnszone_add', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnszone_add_permission

Wrapper method for dnszone_add_permission API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_dnszone_add_permission
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnszone_add_permission', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnszone_del

Wrapper method for dnszone_del API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_dnszone_del
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnszone_del', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnszone_disable

Wrapper method for dnszone_disable API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_dnszone_disable
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnszone_disable', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnszone_enable

Wrapper method for dnszone_enable API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_dnszone_enable
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnszone_enable', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnszone_find

Wrapper method for dnszone_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item dnsclass

=item dnsttl

=item forward_only

=item idnsallowdynupdate

=item idnsallowquery

=item idnsallowsyncptr

=item idnsallowtransfer

=item idnsforwarders

=item idnsforwardpolicy

=item idnsname

=item idnssecinlinesigning

=item idnssoaexpire

=item idnssoaminimum

=item idnssoamname

=item idnssoarefresh

=item idnssoaretry

=item idnssoarname

=item idnssoaserial

=item idnsupdatepolicy

=item idnszoneactive

=item name_from_ip

=item nsec3paramrecord

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_dnszone_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all dnsclass dnsttl forward_only idnsallowdynupdate idnsallowquery idnsallowsyncptr idnsallowtransfer idnsforwarders idnsforwardpolicy idnsname idnssecinlinesigning idnssoaexpire idnssoaminimum idnssoamname idnssoarefresh idnssoaretry idnssoarname idnssoaserial idnsupdatepolicy idnszoneactive name_from_ip nsec3paramrecord pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string int boolean boolean string boolean string string string string boolean int int string int int string int string boolean string string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnszone_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_dnszone_mod

Wrapper method for dnszone_mod API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item dnsclass

=item dnsttl

=item force

=item idnsallowdynupdate

=item idnsallowquery

=item idnsallowsyncptr

=item idnsallowtransfer

=item idnsforwarders

=item idnsforwardpolicy

=item idnssecinlinesigning

=item idnssoaexpire

=item idnssoaminimum

=item idnssoamname

=item idnssoarefresh

=item idnssoaretry

=item idnssoarname

=item idnssoaserial

=item idnsupdatepolicy

=item name_from_ip

=item nsec3paramrecord

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_dnszone_mod
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(addattr all delattr dnsclass dnsttl force idnsallowdynupdate idnsallowquery idnsallowsyncptr idnsallowtransfer idnsforwarders idnsforwardpolicy idnssecinlinesigning idnssoaexpire idnssoaminimum idnssoamname idnssoarefresh idnssoaretry idnssoarname idnssoaserial idnsupdatepolicy name_from_ip nsec3paramrecord raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string int boolean boolean string boolean string string string boolean int int string int int string int string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnszone_mod', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnszone_remove_permission

Wrapper method for dnszone_remove_permission API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_dnszone_remove_permission
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnszone_remove_permission', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_dnszone_show

Wrapper method for dnszone_show API

=over

=item Arguments

=over

=item idnsname

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_dnszone_show
{
    my ($self, $idnsname, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('dnszone_show', [$idnsname], ['string'], \%opts, \%opt_type_map);
}


=item api_domainlevel_get

Wrapper method for domainlevel_get API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_domainlevel_get
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('domainlevel_get', [], [], \%opts, \%opt_type_map);
}


=item api_domainlevel_set

Wrapper method for domainlevel_set API

=over

=item Arguments

=over

=item ipadomainlevel

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_domainlevel_set
{
    my ($self, $ipadomainlevel, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('domainlevel_set', [$ipadomainlevel], ['int'], \%opts, \%opt_type_map);
}


=item api_env

Wrapper method for env API

=over

=item Arguments

=over

=item variables

=back


=item Options

=over

=item all

=item server

=item version

=back


=back

=cut

sub api_env
{
    my ($self, $variables, %opts) = @_;

    my @opt_keys = qw(all server version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('env', [$variables], ['string'], \%opts, \%opt_type_map);
}


=item api_group_add

Wrapper method for group_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item external

=item gidnumber

=item no_members

=item nonposix

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_group_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description external gidnumber no_members nonposix raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean int boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('group_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_group_add_member

Wrapper method for group_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item ipaexternalmember

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_group_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group ipaexternalmember no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('group_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_group_del

Wrapper method for group_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_group_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('group_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_group_detach

Wrapper method for group_detach API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_group_detach
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('group_detach', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_group_find

Wrapper method for group_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item external

=item gidnumber

=item group

=item in_group

=item in_hbacrule

=item in_netgroup

=item in_role

=item in_sudorule

=item no_group

=item no_members

=item no_user

=item nonposix

=item not_in_group

=item not_in_hbacrule

=item not_in_netgroup

=item not_in_role

=item not_in_sudorule

=item pkey_only

=item posix

=item private

=item raw

=item sizelimit

=item timelimit

=item user

=item version

=back


=back

=cut

sub api_group_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description external gidnumber group in_group in_hbacrule in_netgroup in_role in_sudorule no_group no_members no_user nonposix not_in_group not_in_hbacrule not_in_netgroup not_in_role not_in_sudorule pkey_only posix private raw sizelimit timelimit user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean int string string string string string string string boolean string boolean string string string string string boolean boolean boolean boolean int int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('group_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_group_mod

Wrapper method for group_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item external

=item gidnumber

=item no_members

=item posix

=item raw

=item rename

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_group_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description external gidnumber no_members posix raw rename rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean int boolean boolean boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('group_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_group_remove_member

Wrapper method for group_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item ipaexternalmember

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_group_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group ipaexternalmember no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('group_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_group_show

Wrapper method for group_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_group_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('group_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_add

Wrapper method for hbacrule_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item accessruletype

=item addattr

=item all

=item description

=item externalhost

=item hostcategory

=item ipaenabledflag

=item no_members

=item raw

=item servicecategory

=item setattr

=item sourcehost_host

=item sourcehost_hostgroup

=item sourcehostcategory

=item usercategory

=item version

=back


=back

=cut

sub api_hbacrule_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(accessruletype addattr all description externalhost hostcategory ipaenabledflag no_members raw servicecategory setattr sourcehost_host sourcehost_hostgroup sourcehostcategory usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string boolean string string string boolean boolean boolean string string string string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_add_host

Wrapper method for hbacrule_add_host API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hbacrule_add_host
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_add_host', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_add_service

Wrapper method for hbacrule_add_service API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item hbacsvc

=item hbacsvcgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hbacrule_add_service
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all hbacsvc hbacsvcgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_add_service', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_add_sourcehost

Wrapper method for hbacrule_add_sourcehost API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hbacrule_add_sourcehost
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_add_sourcehost', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_add_user

Wrapper method for hbacrule_add_user API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_hbacrule_add_user
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_add_user', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_del

Wrapper method for hbacrule_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_hbacrule_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_disable

Wrapper method for hbacrule_disable API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_hbacrule_disable
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_disable', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_enable

Wrapper method for hbacrule_enable API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_hbacrule_enable
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_enable', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_find

Wrapper method for hbacrule_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item accessruletype

=item all

=item cn

=item description

=item externalhost

=item hostcategory

=item ipaenabledflag

=item no_members

=item pkey_only

=item raw

=item servicecategory

=item sizelimit

=item sourcehost_host

=item sourcehost_hostgroup

=item sourcehostcategory

=item timelimit

=item usercategory

=item version

=back


=back

=cut

sub api_hbacrule_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(accessruletype all cn description externalhost hostcategory ipaenabledflag no_members pkey_only raw servicecategory sizelimit sourcehost_host sourcehost_hostgroup sourcehostcategory timelimit usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string boolean boolean boolean boolean string int string string string int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_mod

Wrapper method for hbacrule_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item accessruletype

=item addattr

=item all

=item delattr

=item description

=item externalhost

=item hostcategory

=item ipaenabledflag

=item no_members

=item raw

=item rights

=item servicecategory

=item setattr

=item sourcehost_host

=item sourcehost_hostgroup

=item sourcehostcategory

=item usercategory

=item version

=back


=back

=cut

sub api_hbacrule_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(accessruletype addattr all delattr description externalhost hostcategory ipaenabledflag no_members raw rights servicecategory setattr sourcehost_host sourcehost_hostgroup sourcehostcategory usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string boolean string string string string boolean boolean boolean boolean string string string string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_remove_host

Wrapper method for hbacrule_remove_host API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hbacrule_remove_host
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_remove_host', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_remove_service

Wrapper method for hbacrule_remove_service API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item hbacsvc

=item hbacsvcgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hbacrule_remove_service
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all hbacsvc hbacsvcgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_remove_service', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_remove_sourcehost

Wrapper method for hbacrule_remove_sourcehost API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hbacrule_remove_sourcehost
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_remove_sourcehost', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_remove_user

Wrapper method for hbacrule_remove_user API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_hbacrule_remove_user
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_remove_user', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacrule_show

Wrapper method for hbacrule_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_hbacrule_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacrule_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvc_add

Wrapper method for hbacsvc_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item no_members

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_hbacsvc_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description no_members raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvc_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvc_del

Wrapper method for hbacsvc_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_hbacsvc_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvc_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvc_find

Wrapper method for hbacsvc_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item no_members

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_hbacsvc_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description no_members pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvc_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvc_mod

Wrapper method for hbacsvc_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item no_members

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_hbacsvc_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description no_members raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvc_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvc_show

Wrapper method for hbacsvc_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_hbacsvc_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvc_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvcgroup_add

Wrapper method for hbacsvcgroup_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item no_members

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_hbacsvcgroup_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description no_members raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvcgroup_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvcgroup_add_member

Wrapper method for hbacsvcgroup_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item hbacsvc

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hbacsvcgroup_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all hbacsvc no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvcgroup_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvcgroup_del

Wrapper method for hbacsvcgroup_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_hbacsvcgroup_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvcgroup_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvcgroup_find

Wrapper method for hbacsvcgroup_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item no_members

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_hbacsvcgroup_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description no_members pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvcgroup_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvcgroup_mod

Wrapper method for hbacsvcgroup_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item no_members

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_hbacsvcgroup_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description no_members raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvcgroup_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvcgroup_remove_member

Wrapper method for hbacsvcgroup_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item hbacsvc

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hbacsvcgroup_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all hbacsvc no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvcgroup_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbacsvcgroup_show

Wrapper method for hbacsvcgroup_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_hbacsvcgroup_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbacsvcgroup_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hbactest

Wrapper method for hbactest API

=over

=item No arguments.


=item Options

=over

=item disabled

=item enabled

=item nodetail

=item rules

=item service

=item sizelimit

=item sourcehost

=item targethost

=item user

=item version

=back


=back

=cut

sub api_hbactest
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(disabled enabled nodetail rules service sizelimit sourcehost targethost user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string int string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hbactest', [], [], \%opts, \%opt_type_map);
}


=item api_host_add

Wrapper method for host_add API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item addattr

=item all

=item description

=item force

=item ip_address

=item ipaassignedidview

=item ipakrbokasdelegate

=item ipakrbrequirespreauth

=item ipasshpubkey

=item l

=item macaddress

=item no_members

=item no_reverse

=item nshardwareplatform

=item nshostlocation

=item nsosversion

=item random

=item raw

=item setattr

=item usercertificate

=item userclass

=item userpassword

=item version

=back


=back

=cut

sub api_host_add
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(addattr all description force ip_address ipaassignedidview ipakrbokasdelegate ipakrbrequirespreauth ipasshpubkey l macaddress no_members no_reverse nshardwareplatform nshostlocation nsosversion random raw setattr usercertificate userclass userpassword version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean string string boolean boolean string string string boolean boolean string string string boolean boolean string bytes string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_add', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_add_cert

Wrapper method for host_add_cert API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item usercertificate

=item version

=back


=back

=cut

sub api_host_add_cert
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(all no_members raw usercertificate version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean bytes string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_add_cert', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_add_managedby

Wrapper method for host_add_managedby API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item all

=item host

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_host_add_managedby
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(all host no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_add_managedby', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_allow_create_keytab

Wrapper method for host_allow_create_keytab API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_host_allow_create_keytab
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_allow_create_keytab', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_allow_retrieve_keytab

Wrapper method for host_allow_retrieve_keytab API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_host_allow_retrieve_keytab
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_allow_retrieve_keytab', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_del

Wrapper method for host_del API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item continue

=item updatedns

=item version

=back


=back

=cut

sub api_host_del
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(continue updatedns version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_del', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_disable

Wrapper method for host_disable API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_host_disable
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_disable', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_disallow_create_keytab

Wrapper method for host_disallow_create_keytab API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_host_disallow_create_keytab
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_disallow_create_keytab', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_disallow_retrieve_keytab

Wrapper method for host_disallow_retrieve_keytab API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_host_disallow_retrieve_keytab
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_disallow_retrieve_keytab', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_find

Wrapper method for host_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item description

=item enroll_by_user

=item fqdn

=item in_hbacrule

=item in_hostgroup

=item in_netgroup

=item in_role

=item in_sudorule

=item ipaassignedidview

=item l

=item macaddress

=item man_by_host

=item man_host

=item no_members

=item not_enroll_by_user

=item not_in_hbacrule

=item not_in_hostgroup

=item not_in_netgroup

=item not_in_role

=item not_in_sudorule

=item not_man_by_host

=item not_man_host

=item nshardwareplatform

=item nshostlocation

=item nsosversion

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item usercertificate

=item userclass

=item userpassword

=item version

=back


=back

=cut

sub api_host_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all description enroll_by_user fqdn in_hbacrule in_hostgroup in_netgroup in_role in_sudorule ipaassignedidview l macaddress man_by_host man_host no_members not_enroll_by_user not_in_hbacrule not_in_hostgroup not_in_netgroup not_in_role not_in_sudorule not_man_by_host not_man_host nshardwareplatform nshostlocation nsosversion pkey_only raw sizelimit timelimit usercertificate userclass userpassword version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string string string string string string string string string string boolean string string string string string string string string string string string boolean boolean int int bytes string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_host_mod

Wrapper method for host_mod API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item ipaassignedidview

=item ipakrbokasdelegate

=item ipakrbrequirespreauth

=item ipasshpubkey

=item krbprincipalname

=item l

=item macaddress

=item no_members

=item nshardwareplatform

=item nshostlocation

=item nsosversion

=item random

=item raw

=item rights

=item setattr

=item updatedns

=item usercertificate

=item userclass

=item userpassword

=item version

=back


=back

=cut

sub api_host_mod
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description ipaassignedidview ipakrbokasdelegate ipakrbrequirespreauth ipasshpubkey krbprincipalname l macaddress no_members nshardwareplatform nshostlocation nsosversion random raw rights setattr updatedns usercertificate userclass userpassword version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string boolean boolean string string string string boolean string string string boolean boolean boolean string boolean bytes string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_mod', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_remove_cert

Wrapper method for host_remove_cert API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item usercertificate

=item version

=back


=back

=cut

sub api_host_remove_cert
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(all no_members raw usercertificate version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean bytes string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_remove_cert', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_remove_managedby

Wrapper method for host_remove_managedby API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item all

=item host

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_host_remove_managedby
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(all host no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_remove_managedby', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_host_show

Wrapper method for host_show API

=over

=item Arguments

=over

=item fqdn

=back


=item Options

=over

=item all

=item no_members

=item out

=item raw

=item rights

=item version

=back


=back

=cut

sub api_host_show
{
    my ($self, $fqdn, %opts) = @_;

    my @opt_keys = qw(all no_members out raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('host_show', [$fqdn], ['string'], \%opts, \%opt_type_map);
}


=item api_hostgroup_add

Wrapper method for hostgroup_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item no_members

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_hostgroup_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description no_members raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hostgroup_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hostgroup_add_member

Wrapper method for hostgroup_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hostgroup_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hostgroup_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hostgroup_del

Wrapper method for hostgroup_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_hostgroup_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hostgroup_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hostgroup_find

Wrapper method for hostgroup_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item host

=item hostgroup

=item in_hbacrule

=item in_hostgroup

=item in_netgroup

=item in_sudorule

=item no_host

=item no_hostgroup

=item no_members

=item not_in_hbacrule

=item not_in_hostgroup

=item not_in_netgroup

=item not_in_sudorule

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_hostgroup_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description host hostgroup in_hbacrule in_hostgroup in_netgroup in_sudorule no_host no_hostgroup no_members not_in_hbacrule not_in_hostgroup not_in_netgroup not_in_sudorule pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string string string string string string string boolean string string string string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hostgroup_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_hostgroup_mod

Wrapper method for hostgroup_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item no_members

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_hostgroup_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description no_members raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hostgroup_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hostgroup_remove_member

Wrapper method for hostgroup_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_hostgroup_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hostgroup_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_hostgroup_show

Wrapper method for hostgroup_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_hostgroup_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('hostgroup_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_i18n_messages

Wrapper method for i18n_messages API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_i18n_messages
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('i18n_messages', [], [], \%opts, \%opt_type_map);
}


=item api_idoverridegroup_add

Wrapper method for idoverridegroup_add API

=over

=item Arguments

=over

=item idviewcn

=item ipaanchoruuid

=back


=item Options

=over

=item addattr

=item all

=item cn

=item description

=item fallback_to_ldap

=item gidnumber

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_idoverridegroup_add
{
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;

    my @opt_keys = qw(addattr all cn description fallback_to_ldap gidnumber raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean int boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverridegroup_add', [$idviewcn, $ipaanchoruuid], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idoverridegroup_del

Wrapper method for idoverridegroup_del API

=over

=item Arguments

=over

=item idviewcn

=item ipaanchoruuid

=back


=item Options

=over

=item continue

=item fallback_to_ldap

=item version

=back


=back

=cut

sub api_idoverridegroup_del
{
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;

    my @opt_keys = qw(continue fallback_to_ldap version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverridegroup_del', [$idviewcn, $ipaanchoruuid], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idoverridegroup_find

Wrapper method for idoverridegroup_find API

=over

=item Arguments

=over

=item idviewcn

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item fallback_to_ldap

=item gidnumber

=item ipaanchoruuid

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_idoverridegroup_find
{
    my ($self, $idviewcn, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description fallback_to_ldap gidnumber ipaanchoruuid pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean int string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverridegroup_find', [$idviewcn, $criteria], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idoverridegroup_mod

Wrapper method for idoverridegroup_mod API

=over

=item Arguments

=over

=item idviewcn

=item ipaanchoruuid

=back


=item Options

=over

=item addattr

=item all

=item cn

=item delattr

=item description

=item fallback_to_ldap

=item gidnumber

=item raw

=item rename

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_idoverridegroup_mod
{
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;

    my @opt_keys = qw(addattr all cn delattr description fallback_to_ldap gidnumber raw rename rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string boolean int boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverridegroup_mod', [$idviewcn, $ipaanchoruuid], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idoverridegroup_show

Wrapper method for idoverridegroup_show API

=over

=item Arguments

=over

=item idviewcn

=item ipaanchoruuid

=back


=item Options

=over

=item all

=item fallback_to_ldap

=item raw

=item rights

=item version

=back


=back

=cut

sub api_idoverridegroup_show
{
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;

    my @opt_keys = qw(all fallback_to_ldap raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverridegroup_show', [$idviewcn, $ipaanchoruuid], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idoverrideuser_add

Wrapper method for idoverrideuser_add API

=over

=item Arguments

=over

=item idviewcn

=item ipaanchoruuid

=back


=item Options

=over

=item addattr

=item all

=item description

=item fallback_to_ldap

=item gecos

=item gidnumber

=item homedirectory

=item ipaoriginaluid

=item ipasshpubkey

=item loginshell

=item raw

=item setattr

=item uid

=item uidnumber

=item version

=back


=back

=cut

sub api_idoverrideuser_add
{
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;

    my @opt_keys = qw(addattr all description fallback_to_ldap gecos gidnumber homedirectory ipaoriginaluid ipasshpubkey loginshell raw setattr uid uidnumber version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean string int string string string string boolean string string int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverrideuser_add', [$idviewcn, $ipaanchoruuid], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idoverrideuser_del

Wrapper method for idoverrideuser_del API

=over

=item Arguments

=over

=item idviewcn

=item ipaanchoruuid

=back


=item Options

=over

=item continue

=item fallback_to_ldap

=item version

=back


=back

=cut

sub api_idoverrideuser_del
{
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;

    my @opt_keys = qw(continue fallback_to_ldap version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverrideuser_del', [$idviewcn, $ipaanchoruuid], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idoverrideuser_find

Wrapper method for idoverrideuser_find API

=over

=item Arguments

=over

=item idviewcn

=item criteria

=back


=item Options

=over

=item all

=item description

=item fallback_to_ldap

=item gecos

=item gidnumber

=item homedirectory

=item ipaanchoruuid

=item ipaoriginaluid

=item loginshell

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item uid

=item uidnumber

=item version

=back


=back

=cut

sub api_idoverrideuser_find
{
    my ($self, $idviewcn, $criteria, %opts) = @_;

    my @opt_keys = qw(all description fallback_to_ldap gecos gidnumber homedirectory ipaanchoruuid ipaoriginaluid loginshell pkey_only raw sizelimit timelimit uid uidnumber version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean string int string string string string boolean boolean int int string int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverrideuser_find', [$idviewcn, $criteria], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idoverrideuser_mod

Wrapper method for idoverrideuser_mod API

=over

=item Arguments

=over

=item idviewcn

=item ipaanchoruuid

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item fallback_to_ldap

=item gecos

=item gidnumber

=item homedirectory

=item ipaoriginaluid

=item ipasshpubkey

=item loginshell

=item raw

=item rename

=item rights

=item setattr

=item uid

=item uidnumber

=item version

=back


=back

=cut

sub api_idoverrideuser_mod
{
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description fallback_to_ldap gecos gidnumber homedirectory ipaoriginaluid ipasshpubkey loginshell raw rename rights setattr uid uidnumber version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean string int string string string string boolean string boolean string string int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverrideuser_mod', [$idviewcn, $ipaanchoruuid], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idoverrideuser_show

Wrapper method for idoverrideuser_show API

=over

=item Arguments

=over

=item idviewcn

=item ipaanchoruuid

=back


=item Options

=over

=item all

=item fallback_to_ldap

=item raw

=item rights

=item version

=back


=back

=cut

sub api_idoverrideuser_show
{
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;

    my @opt_keys = qw(all fallback_to_ldap raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idoverrideuser_show', [$idviewcn, $ipaanchoruuid], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_idrange_add

Wrapper method for idrange_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item ipabaseid

=item ipabaserid

=item ipaidrangesize

=item ipanttrusteddomainname

=item ipanttrusteddomainsid

=item iparangetype

=item ipasecondarybaserid

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_idrange_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all ipabaseid ipabaserid ipaidrangesize ipanttrusteddomainname ipanttrusteddomainsid iparangetype ipasecondarybaserid raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean int int int string string string int boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idrange_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_idrange_del

Wrapper method for idrange_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_idrange_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idrange_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_idrange_find

Wrapper method for idrange_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item ipabaseid

=item ipabaserid

=item ipaidrangesize

=item ipanttrusteddomainsid

=item iparangetype

=item ipasecondarybaserid

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_idrange_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn ipabaseid ipabaserid ipaidrangesize ipanttrusteddomainsid iparangetype ipasecondarybaserid pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string int int int string string int boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idrange_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_idrange_mod

Wrapper method for idrange_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item ipabaseid

=item ipabaserid

=item ipaidrangesize

=item ipanttrusteddomainname

=item ipanttrusteddomainsid

=item ipasecondarybaserid

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_idrange_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr ipabaseid ipabaserid ipaidrangesize ipanttrusteddomainname ipanttrusteddomainsid ipasecondarybaserid raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string int int int string string int boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idrange_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_idrange_show

Wrapper method for idrange_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_idrange_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idrange_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_idview_add

Wrapper method for idview_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_idview_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idview_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_idview_apply

Wrapper method for idview_apply API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item host

=item hostgroup

=item version

=back


=back

=cut

sub api_idview_apply
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(host hostgroup version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idview_apply', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_idview_del

Wrapper method for idview_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_idview_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idview_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_idview_find

Wrapper method for idview_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_idview_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idview_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_idview_mod

Wrapper method for idview_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item raw

=item rename

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_idview_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description raw rename rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idview_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_idview_show

Wrapper method for idview_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item show_hosts

=item version

=back


=back

=cut

sub api_idview_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights show_hosts version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idview_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_idview_unapply

Wrapper method for idview_unapply API

=over

=item No arguments.


=item Options

=over

=item host

=item hostgroup

=item version

=back


=back

=cut

sub api_idview_unapply
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(host hostgroup version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('idview_unapply', [], [], \%opts, \%opt_type_map);
}


=item api_json_metadata

Wrapper method for json_metadata API

=over

=item Arguments

=over

=item objname

=item methodname

=back


=item Options

=over

=item command

=item method

=item object

=item version

=back


=back

=cut

sub api_json_metadata
{
    my ($self, $objname, $methodname, %opts) = @_;

    my @opt_keys = qw(command method object version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('json_metadata', [$objname, $methodname], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_kra_is_enabled

Wrapper method for kra_is_enabled API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_kra_is_enabled
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('kra_is_enabled', [], [], \%opts, \%opt_type_map);
}


=item api_krbtpolicy_mod

Wrapper method for krbtpolicy_mod API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item krbmaxrenewableage

=item krbmaxticketlife

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_krbtpolicy_mod
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(addattr all delattr krbmaxrenewableage krbmaxticketlife raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string int int boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('krbtpolicy_mod', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_krbtpolicy_reset

Wrapper method for krbtpolicy_reset API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item raw

=item version

=back


=back

=cut

sub api_krbtpolicy_reset
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('krbtpolicy_reset', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_krbtpolicy_show

Wrapper method for krbtpolicy_show API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_krbtpolicy_show
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('krbtpolicy_show', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_migrate_ds

Wrapper method for migrate_ds API

=over

=item Arguments

=over

=item ldapuri

=item bindpw

=back


=item Options

=over

=item basedn

=item binddn

=item cacertfile

=item compat

=item continue

=item exclude_groups

=item exclude_users

=item groupcontainer

=item groupignoreattribute

=item groupignoreobjectclass

=item groupobjectclass

=item groupoverwritegid

=item schema

=item scope

=item use_def_group

=item usercontainer

=item userignoreattribute

=item userignoreobjectclass

=item userobjectclass

=item version

=back


=back

=cut

sub api_migrate_ds
{
    my ($self, $ldapuri, $bindpw, %opts) = @_;

    my @opt_keys = qw(basedn binddn cacertfile compat continue exclude_groups exclude_users groupcontainer groupignoreattribute groupignoreobjectclass groupobjectclass groupoverwritegid schema scope use_def_group usercontainer userignoreattribute userignoreobjectclass userobjectclass version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string string boolean boolean string string string string string string boolean string string boolean string string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('migrate_ds', [$ldapuri, $bindpw], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_netgroup_add

Wrapper method for netgroup_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item externalhost

=item hostcategory

=item nisdomainname

=item no_members

=item raw

=item setattr

=item usercategory

=item version

=back


=back

=cut

sub api_netgroup_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description externalhost hostcategory nisdomainname no_members raw setattr usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('netgroup_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_netgroup_add_member

Wrapper method for netgroup_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item netgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_netgroup_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup netgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('netgroup_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_netgroup_del

Wrapper method for netgroup_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_netgroup_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('netgroup_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_netgroup_find

Wrapper method for netgroup_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item externalhost

=item group

=item host

=item hostcategory

=item hostgroup

=item in_netgroup

=item ipauniqueid

=item managed

=item netgroup

=item nisdomainname

=item no_group

=item no_host

=item no_hostgroup

=item no_members

=item no_netgroup

=item no_user

=item not_in_netgroup

=item pkey_only

=item private

=item raw

=item sizelimit

=item timelimit

=item user

=item usercategory

=item version

=back


=back

=cut

sub api_netgroup_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description externalhost group host hostcategory hostgroup in_netgroup ipauniqueid managed netgroup nisdomainname no_group no_host no_hostgroup no_members no_netgroup no_user not_in_netgroup pkey_only private raw sizelimit timelimit user usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string string string string string string boolean string string string string string boolean string string string boolean boolean boolean int int string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('netgroup_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_netgroup_mod

Wrapper method for netgroup_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item externalhost

=item hostcategory

=item nisdomainname

=item no_members

=item raw

=item rights

=item setattr

=item usercategory

=item version

=back


=back

=cut

sub api_netgroup_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description externalhost hostcategory nisdomainname no_members raw rights setattr usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string boolean boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('netgroup_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_netgroup_remove_member

Wrapper method for netgroup_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item netgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_netgroup_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup netgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('netgroup_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_netgroup_show

Wrapper method for netgroup_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_netgroup_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('netgroup_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_otpconfig_mod

Wrapper method for otpconfig_mod API

=over

=item No arguments.


=item Options

=over

=item addattr

=item all

=item delattr

=item ipatokenhotpauthwindow

=item ipatokenhotpsyncwindow

=item ipatokentotpauthwindow

=item ipatokentotpsyncwindow

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_otpconfig_mod
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(addattr all delattr ipatokenhotpauthwindow ipatokenhotpsyncwindow ipatokentotpauthwindow ipatokentotpsyncwindow raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string int int int int boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otpconfig_mod', [], [], \%opts, \%opt_type_map);
}


=item api_otpconfig_show

Wrapper method for otpconfig_show API

=over

=item No arguments.


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_otpconfig_show
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otpconfig_show', [], [], \%opts, \%opt_type_map);
}


=item api_otptoken_add

Wrapper method for otptoken_add API

=over

=item Arguments

=over

=item ipatokenuniqueid

=back


=item Options

=over

=item addattr

=item all

=item description

=item ipatokendisabled

=item ipatokenhotpcounter

=item ipatokenmodel

=item ipatokennotafter

=item ipatokennotbefore

=item ipatokenotpalgorithm

=item ipatokenotpdigits

=item ipatokenotpkey

=item ipatokenowner

=item ipatokenserial

=item ipatokentotpclockoffset

=item ipatokentotptimestep

=item ipatokenvendor

=item no_members

=item no_qrcode

=item qrcode

=item raw

=item setattr

=item type

=item version

=back


=back

=cut

sub api_otptoken_add
{
    my ($self, $ipatokenuniqueid, %opts) = @_;

    my @opt_keys = qw(addattr all description ipatokendisabled ipatokenhotpcounter ipatokenmodel ipatokennotafter ipatokennotbefore ipatokenotpalgorithm ipatokenotpdigits ipatokenotpkey ipatokenowner ipatokenserial ipatokentotpclockoffset ipatokentotptimestep ipatokenvendor no_members no_qrcode qrcode raw setattr type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean int string datetime datetime string int string string string int int string boolean boolean boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otptoken_add', [$ipatokenuniqueid], ['string'], \%opts, \%opt_type_map);
}


=item api_otptoken_add_managedby

Wrapper method for otptoken_add_managedby API

=over

=item Arguments

=over

=item ipatokenuniqueid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_otptoken_add_managedby
{
    my ($self, $ipatokenuniqueid, %opts) = @_;

    my @opt_keys = qw(all no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otptoken_add_managedby', [$ipatokenuniqueid], ['string'], \%opts, \%opt_type_map);
}


=item api_otptoken_add_yubikey

Wrapper method for otptoken_add_yubikey API

=over

=item Arguments

=over

=item ipatokenuniqueid

=back


=item Options

=over

=item description

=item ipatokendisabled

=item ipatokennotafter

=item ipatokennotbefore

=item ipatokenotpdigits

=item ipatokenowner

=item slot

=item version

=back


=back

=cut

sub api_otptoken_add_yubikey
{
    my ($self, $ipatokenuniqueid, %opts) = @_;

    my @opt_keys = qw(description ipatokendisabled ipatokennotafter ipatokennotbefore ipatokenotpdigits ipatokenowner slot version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean datetime datetime int string int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otptoken_add_yubikey', [$ipatokenuniqueid], ['string'], \%opts, \%opt_type_map);
}


=item api_otptoken_del

Wrapper method for otptoken_del API

=over

=item Arguments

=over

=item ipatokenuniqueid

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_otptoken_del
{
    my ($self, $ipatokenuniqueid, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otptoken_del', [$ipatokenuniqueid], ['string'], \%opts, \%opt_type_map);
}


=item api_otptoken_find

Wrapper method for otptoken_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item description

=item ipatokendisabled

=item ipatokenhotpcounter

=item ipatokenmodel

=item ipatokennotafter

=item ipatokennotbefore

=item ipatokenotpalgorithm

=item ipatokenotpdigits

=item ipatokenowner

=item ipatokenserial

=item ipatokentotpclockoffset

=item ipatokentotptimestep

=item ipatokenuniqueid

=item ipatokenvendor

=item no_members

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item type

=item version

=back


=back

=cut

sub api_otptoken_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all description ipatokendisabled ipatokenhotpcounter ipatokenmodel ipatokennotafter ipatokennotbefore ipatokenotpalgorithm ipatokenotpdigits ipatokenowner ipatokenserial ipatokentotpclockoffset ipatokentotptimestep ipatokenuniqueid ipatokenvendor no_members pkey_only raw sizelimit timelimit type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean int string datetime datetime string int string string int int string string boolean boolean boolean int int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otptoken_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_otptoken_mod

Wrapper method for otptoken_mod API

=over

=item Arguments

=over

=item ipatokenuniqueid

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item ipatokendisabled

=item ipatokenmodel

=item ipatokennotafter

=item ipatokennotbefore

=item ipatokenowner

=item ipatokenserial

=item ipatokenvendor

=item no_members

=item raw

=item rename

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_otptoken_mod
{
    my ($self, $ipatokenuniqueid, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description ipatokendisabled ipatokenmodel ipatokennotafter ipatokennotbefore ipatokenowner ipatokenserial ipatokenvendor no_members raw rename rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean string datetime datetime string string string boolean boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otptoken_mod', [$ipatokenuniqueid], ['string'], \%opts, \%opt_type_map);
}


=item api_otptoken_remove_managedby

Wrapper method for otptoken_remove_managedby API

=over

=item Arguments

=over

=item ipatokenuniqueid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_otptoken_remove_managedby
{
    my ($self, $ipatokenuniqueid, %opts) = @_;

    my @opt_keys = qw(all no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otptoken_remove_managedby', [$ipatokenuniqueid], ['string'], \%opts, \%opt_type_map);
}


=item api_otptoken_show

Wrapper method for otptoken_show API

=over

=item Arguments

=over

=item ipatokenuniqueid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_otptoken_show
{
    my ($self, $ipatokenuniqueid, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otptoken_show', [$ipatokenuniqueid], ['string'], \%opts, \%opt_type_map);
}


=item api_otptoken_sync

Wrapper method for otptoken_sync API

=over

=item Arguments

=over

=item token

=back


=item Options

=over

=item first_code

=item password

=item second_code

=item user

=item version

=back


=back

=cut

sub api_otptoken_sync
{
    my ($self, $token, %opts) = @_;

    my @opt_keys = qw(first_code password second_code user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('otptoken_sync', [$token], ['string'], \%opts, \%opt_type_map);
}


=item api_passwd

Wrapper method for passwd API

=over

=item Arguments

=over

=item principal

=item password

=item current_password

=back


=item Options

=over

=item otp

=item version

=back


=back

=cut

sub api_passwd
{
    my ($self, $principal, $password, $current_password, %opts) = @_;

    my @opt_keys = qw(otp version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('passwd', [$principal, $password, $current_password], ['string', 'string', 'string'], \%opts, \%opt_type_map);
}


=item api_permission_add

Wrapper method for permission_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item attrs

=item extratargetfilter

=item filter

=item ipapermbindruletype

=item ipapermlocation

=item ipapermright

=item ipapermtarget

=item ipapermtargetfilter

=item ipapermtargetfrom

=item ipapermtargetto

=item memberof

=item no_members

=item permissions

=item raw

=item setattr

=item subtree

=item targetgroup

=item type

=item version

=back


=back

=cut

sub api_permission_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all attrs extratargetfilter filter ipapermbindruletype ipapermlocation ipapermright ipapermtarget ipapermtargetfilter ipapermtargetfrom ipapermtargetto memberof no_members permissions raw setattr subtree targetgroup type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string string string string string string boolean string boolean string string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('permission_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_permission_add_member

Wrapper method for permission_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item privilege

=item raw

=item version

=back


=back

=cut

sub api_permission_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members privilege raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('permission_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_permission_add_noaci

Wrapper method for permission_add_noaci API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item ipapermissiontype

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_permission_add_noaci
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all ipapermissiontype no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('permission_add_noaci', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_permission_del

Wrapper method for permission_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item force

=item version

=back


=back

=cut

sub api_permission_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue force version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('permission_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_permission_find

Wrapper method for permission_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item attrs

=item cn

=item extratargetfilter

=item filter

=item ipapermbindruletype

=item ipapermdefaultattr

=item ipapermexcludedattr

=item ipapermincludedattr

=item ipapermlocation

=item ipapermright

=item ipapermtarget

=item ipapermtargetfilter

=item ipapermtargetfrom

=item ipapermtargetto

=item memberof

=item no_members

=item permissions

=item pkey_only

=item raw

=item sizelimit

=item subtree

=item targetgroup

=item timelimit

=item type

=item version

=back


=back

=cut

sub api_permission_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all attrs cn extratargetfilter filter ipapermbindruletype ipapermdefaultattr ipapermexcludedattr ipapermincludedattr ipapermlocation ipapermright ipapermtarget ipapermtargetfilter ipapermtargetfrom ipapermtargetto memberof no_members permissions pkey_only raw sizelimit subtree targetgroup timelimit type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string string string string string string string string string string string string boolean string boolean boolean int string string int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('permission_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_permission_mod

Wrapper method for permission_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item attrs

=item delattr

=item extratargetfilter

=item filter

=item ipapermbindruletype

=item ipapermexcludedattr

=item ipapermincludedattr

=item ipapermlocation

=item ipapermright

=item ipapermtarget

=item ipapermtargetfilter

=item ipapermtargetfrom

=item ipapermtargetto

=item memberof

=item no_members

=item permissions

=item raw

=item rename

=item rights

=item setattr

=item subtree

=item targetgroup

=item type

=item version

=back


=back

=cut

sub api_permission_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all attrs delattr extratargetfilter filter ipapermbindruletype ipapermexcludedattr ipapermincludedattr ipapermlocation ipapermright ipapermtarget ipapermtargetfilter ipapermtargetfrom ipapermtargetto memberof no_members permissions raw rename rights setattr subtree targetgroup type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string string string string string string string string string boolean string boolean string boolean string string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('permission_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_permission_remove_member

Wrapper method for permission_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item privilege

=item raw

=item version

=back


=back

=cut

sub api_permission_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members privilege raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('permission_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_permission_show

Wrapper method for permission_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_permission_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('permission_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_ping

Wrapper method for ping API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_ping
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('ping', [], [], \%opts, \%opt_type_map);
}


=item api_pkinit_anonymous

Wrapper method for pkinit_anonymous API

=over

=item Arguments

=over

=item action

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_pkinit_anonymous
{
    my ($self, $action, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('pkinit_anonymous', [$action], ['string'], \%opts, \%opt_type_map);
}


=item api_plugins

Wrapper method for plugins API

=over

=item No arguments.


=item Options

=over

=item all

=item server

=item version

=back


=back

=cut

sub api_plugins
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all server version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('plugins', [], [], \%opts, \%opt_type_map);
}


=item api_privilege_add

Wrapper method for privilege_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item no_members

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_privilege_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description no_members raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('privilege_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_privilege_add_member

Wrapper method for privilege_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item role

=item version

=back


=back

=cut

sub api_privilege_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw role version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('privilege_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_privilege_add_permission

Wrapper method for privilege_add_permission API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item permission

=item raw

=item version

=back


=back

=cut

sub api_privilege_add_permission
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members permission raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('privilege_add_permission', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_privilege_del

Wrapper method for privilege_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_privilege_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('privilege_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_privilege_find

Wrapper method for privilege_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item no_members

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_privilege_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description no_members pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('privilege_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_privilege_mod

Wrapper method for privilege_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item no_members

=item raw

=item rename

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_privilege_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description no_members raw rename rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('privilege_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_privilege_remove_member

Wrapper method for privilege_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item role

=item version

=back


=back

=cut

sub api_privilege_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw role version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('privilege_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_privilege_remove_permission

Wrapper method for privilege_remove_permission API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item permission

=item raw

=item version

=back


=back

=cut

sub api_privilege_remove_permission
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members permission raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('privilege_remove_permission', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_privilege_show

Wrapper method for privilege_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_privilege_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('privilege_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_pwpolicy_add

Wrapper method for pwpolicy_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item cospriority

=item krbmaxpwdlife

=item krbminpwdlife

=item krbpwdfailurecountinterval

=item krbpwdhistorylength

=item krbpwdlockoutduration

=item krbpwdmaxfailure

=item krbpwdmindiffchars

=item krbpwdminlength

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_pwpolicy_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all cospriority krbmaxpwdlife krbminpwdlife krbpwdfailurecountinterval krbpwdhistorylength krbpwdlockoutduration krbpwdmaxfailure krbpwdmindiffchars krbpwdminlength raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean int int int int int int int int int boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('pwpolicy_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_pwpolicy_del

Wrapper method for pwpolicy_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_pwpolicy_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('pwpolicy_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_pwpolicy_find

Wrapper method for pwpolicy_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item cospriority

=item krbmaxpwdlife

=item krbminpwdlife

=item krbpwdfailurecountinterval

=item krbpwdhistorylength

=item krbpwdlockoutduration

=item krbpwdmaxfailure

=item krbpwdmindiffchars

=item krbpwdminlength

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_pwpolicy_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn cospriority krbmaxpwdlife krbminpwdlife krbpwdfailurecountinterval krbpwdhistorylength krbpwdlockoutduration krbpwdmaxfailure krbpwdmindiffchars krbpwdminlength pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string int int int int int int int int int boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('pwpolicy_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_pwpolicy_mod

Wrapper method for pwpolicy_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item cospriority

=item delattr

=item krbmaxpwdlife

=item krbminpwdlife

=item krbpwdfailurecountinterval

=item krbpwdhistorylength

=item krbpwdlockoutduration

=item krbpwdmaxfailure

=item krbpwdmindiffchars

=item krbpwdminlength

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_pwpolicy_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all cospriority delattr krbmaxpwdlife krbminpwdlife krbpwdfailurecountinterval krbpwdhistorylength krbpwdlockoutduration krbpwdmaxfailure krbpwdmindiffchars krbpwdminlength raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean int string int int int int int int int int boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('pwpolicy_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_pwpolicy_show

Wrapper method for pwpolicy_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item user

=item version

=back


=back

=cut

sub api_pwpolicy_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('pwpolicy_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_radiusproxy_add

Wrapper method for radiusproxy_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item ipatokenradiusretries

=item ipatokenradiussecret

=item ipatokenradiusserver

=item ipatokenradiustimeout

=item ipatokenusermapattribute

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_radiusproxy_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description ipatokenradiusretries ipatokenradiussecret ipatokenradiusserver ipatokenradiustimeout ipatokenusermapattribute raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string int string string int string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('radiusproxy_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_radiusproxy_del

Wrapper method for radiusproxy_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_radiusproxy_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('radiusproxy_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_radiusproxy_find

Wrapper method for radiusproxy_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item ipatokenradiusretries

=item ipatokenradiussecret

=item ipatokenradiusserver

=item ipatokenradiustimeout

=item ipatokenusermapattribute

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_radiusproxy_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description ipatokenradiusretries ipatokenradiussecret ipatokenradiusserver ipatokenradiustimeout ipatokenusermapattribute pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string int string string int string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('radiusproxy_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_radiusproxy_mod

Wrapper method for radiusproxy_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item ipatokenradiusretries

=item ipatokenradiussecret

=item ipatokenradiusserver

=item ipatokenradiustimeout

=item ipatokenusermapattribute

=item raw

=item rename

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_radiusproxy_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description ipatokenradiusretries ipatokenradiussecret ipatokenradiusserver ipatokenradiustimeout ipatokenusermapattribute raw rename rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string int string string int string boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('radiusproxy_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_radiusproxy_show

Wrapper method for radiusproxy_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_radiusproxy_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('radiusproxy_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_realmdomains_mod

Wrapper method for realmdomains_mod API

=over

=item No arguments.


=item Options

=over

=item add_domain

=item addattr

=item all

=item associateddomain

=item del_domain

=item delattr

=item force

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_realmdomains_mod
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(add_domain addattr all associateddomain del_domain delattr force raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string string boolean string string string boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('realmdomains_mod', [], [], \%opts, \%opt_type_map);
}


=item api_realmdomains_show

Wrapper method for realmdomains_show API

=over

=item No arguments.


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_realmdomains_show
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('realmdomains_show', [], [], \%opts, \%opt_type_map);
}


=item api_role_add

Wrapper method for role_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item no_members

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_role_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description no_members raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('role_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_role_add_member

Wrapper method for role_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item service

=item user

=item version

=back


=back

=cut

sub api_role_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw service user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('role_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_role_add_privilege

Wrapper method for role_add_privilege API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item privilege

=item raw

=item version

=back


=back

=cut

sub api_role_add_privilege
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members privilege raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('role_add_privilege', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_role_del

Wrapper method for role_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_role_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('role_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_role_find

Wrapper method for role_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item no_members

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_role_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description no_members pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('role_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_role_mod

Wrapper method for role_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item no_members

=item raw

=item rename

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_role_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description no_members raw rename rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('role_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_role_remove_member

Wrapper method for role_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item service

=item user

=item version

=back


=back

=cut

sub api_role_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw service user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('role_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_role_remove_privilege

Wrapper method for role_remove_privilege API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item privilege

=item raw

=item version

=back


=back

=cut

sub api_role_remove_privilege
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members privilege raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('role_remove_privilege', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_role_show

Wrapper method for role_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_role_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('role_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selfservice_add

Wrapper method for selfservice_add API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item all

=item attrs

=item permissions

=item raw

=item version

=back


=back

=cut

sub api_selfservice_add
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(all attrs permissions raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selfservice_add', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_selfservice_del

Wrapper method for selfservice_del API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_selfservice_del
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selfservice_del', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_selfservice_find

Wrapper method for selfservice_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item aciname

=item all

=item attrs

=item permissions

=item pkey_only

=item raw

=item version

=back


=back

=cut

sub api_selfservice_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(aciname all attrs permissions pkey_only raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selfservice_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_selfservice_mod

Wrapper method for selfservice_mod API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item all

=item attrs

=item permissions

=item raw

=item version

=back


=back

=cut

sub api_selfservice_mod
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(all attrs permissions raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selfservice_mod', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_selfservice_show

Wrapper method for selfservice_show API

=over

=item Arguments

=over

=item aciname

=back


=item Options

=over

=item all

=item raw

=item version

=back


=back

=cut

sub api_selfservice_show
{
    my ($self, $aciname, %opts) = @_;

    my @opt_keys = qw(all raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selfservice_show', [$aciname], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_add

Wrapper method for selinuxusermap_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item hostcategory

=item ipaenabledflag

=item ipaselinuxuser

=item no_members

=item raw

=item seealso

=item setattr

=item usercategory

=item version

=back


=back

=cut

sub api_selinuxusermap_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description hostcategory ipaenabledflag ipaselinuxuser no_members raw seealso setattr usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean string boolean boolean string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_add_host

Wrapper method for selinuxusermap_add_host API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_selinuxusermap_add_host
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_add_host', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_add_user

Wrapper method for selinuxusermap_add_user API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_selinuxusermap_add_user
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_add_user', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_del

Wrapper method for selinuxusermap_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_selinuxusermap_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_disable

Wrapper method for selinuxusermap_disable API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_selinuxusermap_disable
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_disable', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_enable

Wrapper method for selinuxusermap_enable API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_selinuxusermap_enable
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_enable', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_find

Wrapper method for selinuxusermap_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item hostcategory

=item ipaenabledflag

=item ipaselinuxuser

=item no_members

=item pkey_only

=item raw

=item seealso

=item sizelimit

=item timelimit

=item usercategory

=item version

=back


=back

=cut

sub api_selinuxusermap_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description hostcategory ipaenabledflag ipaselinuxuser no_members pkey_only raw seealso sizelimit timelimit usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean string boolean boolean boolean string int int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_mod

Wrapper method for selinuxusermap_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item hostcategory

=item ipaenabledflag

=item ipaselinuxuser

=item no_members

=item raw

=item rights

=item seealso

=item setattr

=item usercategory

=item version

=back


=back

=cut

sub api_selinuxusermap_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description hostcategory ipaenabledflag ipaselinuxuser no_members raw rights seealso setattr usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string boolean string boolean boolean boolean string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_remove_host

Wrapper method for selinuxusermap_remove_host API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_selinuxusermap_remove_host
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_remove_host', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_remove_user

Wrapper method for selinuxusermap_remove_user API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_selinuxusermap_remove_user
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_remove_user', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_selinuxusermap_show

Wrapper method for selinuxusermap_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_selinuxusermap_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('selinuxusermap_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_server_conncheck

Wrapper method for server_conncheck API

=over

=item Arguments

=over

=item cn

=item remote_cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_server_conncheck
{
    my ($self, $cn, $remote_cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('server_conncheck', [$cn, $remote_cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_server_del

Wrapper method for server_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_server_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('server_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_server_find

Wrapper method for server_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item ipamaxdomainlevel

=item ipamindomainlevel

=item no_members

=item no_topologysuffix

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item topologysuffix

=item version

=back


=back

=cut

sub api_server_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn ipamaxdomainlevel ipamindomainlevel no_members no_topologysuffix pkey_only raw sizelimit timelimit topologysuffix version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string int int boolean string boolean boolean int int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('server_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_server_show

Wrapper method for server_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_server_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('server_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_service_add

Wrapper method for service_add API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item addattr

=item all

=item force

=item ipakrbauthzdata

=item ipakrbokasdelegate

=item ipakrbrequirespreauth

=item no_members

=item raw

=item setattr

=item usercertificate

=item version

=back


=back

=cut

sub api_service_add
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(addattr all force ipakrbauthzdata ipakrbokasdelegate ipakrbrequirespreauth no_members raw setattr usercertificate version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean boolean string boolean boolean boolean boolean string bytes string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_add', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_add_cert

Wrapper method for service_add_cert API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item all

=item no_members

=item raw

=item usercertificate

=item version

=back


=back

=cut

sub api_service_add_cert
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(all no_members raw usercertificate version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean bytes string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_add_cert', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_add_host

Wrapper method for service_add_host API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item all

=item host

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_service_add_host
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(all host no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_add_host', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_allow_create_keytab

Wrapper method for service_allow_create_keytab API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_service_allow_create_keytab
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_allow_create_keytab', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_allow_retrieve_keytab

Wrapper method for service_allow_retrieve_keytab API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_service_allow_retrieve_keytab
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_allow_retrieve_keytab', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_del

Wrapper method for service_del API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_service_del
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_del', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_disable

Wrapper method for service_disable API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_service_disable
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_disable', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_disallow_create_keytab

Wrapper method for service_disallow_create_keytab API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_service_disallow_create_keytab
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_disallow_create_keytab', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_disallow_retrieve_keytab

Wrapper method for service_disallow_retrieve_keytab API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item all

=item group

=item host

=item hostgroup

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_service_disallow_retrieve_keytab
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(all group host hostgroup no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_disallow_retrieve_keytab', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_find

Wrapper method for service_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item ipakrbauthzdata

=item krbprincipalname

=item man_by_host

=item no_members

=item not_man_by_host

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_service_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all ipakrbauthzdata krbprincipalname man_by_host no_members not_man_by_host pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_service_mod

Wrapper method for service_mod API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item ipakrbauthzdata

=item ipakrbokasdelegate

=item ipakrbrequirespreauth

=item no_members

=item raw

=item rights

=item setattr

=item usercertificate

=item version

=back


=back

=cut

sub api_service_mod
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(addattr all delattr ipakrbauthzdata ipakrbokasdelegate ipakrbrequirespreauth no_members raw rights setattr usercertificate version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean boolean boolean boolean string bytes string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_mod', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_remove_cert

Wrapper method for service_remove_cert API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item all

=item no_members

=item raw

=item usercertificate

=item version

=back


=back

=cut

sub api_service_remove_cert
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(all no_members raw usercertificate version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean bytes string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_remove_cert', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_remove_host

Wrapper method for service_remove_host API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item all

=item host

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_service_remove_host
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(all host no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_remove_host', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_service_show

Wrapper method for service_show API

=over

=item Arguments

=over

=item krbprincipalname

=back


=item Options

=over

=item all

=item no_members

=item out

=item raw

=item rights

=item version

=back


=back

=cut

sub api_service_show
{
    my ($self, $krbprincipalname, %opts) = @_;

    my @opt_keys = qw(all no_members out raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('service_show', [$krbprincipalname], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationrule_add

Wrapper method for servicedelegationrule_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item no_members

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_servicedelegationrule_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all no_members raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationrule_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationrule_add_member

Wrapper method for servicedelegationrule_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item principal

=item raw

=item version

=back


=back

=cut

sub api_servicedelegationrule_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members principal raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationrule_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationrule_add_target

Wrapper method for servicedelegationrule_add_target API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item servicedelegationtarget

=item version

=back


=back

=cut

sub api_servicedelegationrule_add_target
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw servicedelegationtarget version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationrule_add_target', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationrule_del

Wrapper method for servicedelegationrule_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_servicedelegationrule_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationrule_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationrule_find

Wrapper method for servicedelegationrule_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item no_members

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_servicedelegationrule_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn no_members pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationrule_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationrule_remove_member

Wrapper method for servicedelegationrule_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item principal

=item raw

=item version

=back


=back

=cut

sub api_servicedelegationrule_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members principal raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationrule_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationrule_remove_target

Wrapper method for servicedelegationrule_remove_target API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item servicedelegationtarget

=item version

=back


=back

=cut

sub api_servicedelegationrule_remove_target
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw servicedelegationtarget version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationrule_remove_target', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationrule_show

Wrapper method for servicedelegationrule_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_servicedelegationrule_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationrule_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationtarget_add

Wrapper method for servicedelegationtarget_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_servicedelegationtarget_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationtarget_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationtarget_add_member

Wrapper method for servicedelegationtarget_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item principal

=item raw

=item version

=back


=back

=cut

sub api_servicedelegationtarget_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all principal raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationtarget_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationtarget_del

Wrapper method for servicedelegationtarget_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_servicedelegationtarget_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationtarget_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationtarget_find

Wrapper method for servicedelegationtarget_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_servicedelegationtarget_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationtarget_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationtarget_remove_member

Wrapper method for servicedelegationtarget_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item principal

=item raw

=item version

=back


=back

=cut

sub api_servicedelegationtarget_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all principal raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationtarget_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_servicedelegationtarget_show

Wrapper method for servicedelegationtarget_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_servicedelegationtarget_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('servicedelegationtarget_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_session_logout

Wrapper method for session_logout API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_session_logout
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('session_logout', [], [], \%opts, \%opt_type_map);
}


=item api_sidgen_was_run

Wrapper method for sidgen_was_run API

=over

=item No arguments.


=item Options

=over

=item version

=back


=back

=cut

sub api_sidgen_was_run
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sidgen_was_run', [], [], \%opts, \%opt_type_map);
}


=item api_stageuser_activate

Wrapper method for stageuser_activate API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_stageuser_activate
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('stageuser_activate', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_stageuser_add

Wrapper method for stageuser_add API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item addattr

=item all

=item carlicense

=item cn

=item departmentnumber

=item displayname

=item employeenumber

=item employeetype

=item facsimiletelephonenumber

=item from_delete

=item gecos

=item gidnumber

=item givenname

=item homedirectory

=item initials

=item ipasshpubkey

=item ipatokenradiusconfiglink

=item ipatokenradiususername

=item ipauserauthtype

=item krbprincipalexpiration

=item krbprincipalname

=item l

=item loginshell

=item mail

=item manager

=item mobile

=item no_members

=item ou

=item pager

=item postalcode

=item preferredlanguage

=item random

=item raw

=item setattr

=item sn

=item st

=item street

=item telephonenumber

=item title

=item uidnumber

=item usercertificate

=item userclass

=item userpassword

=item version

=back


=back

=cut

sub api_stageuser_add
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(addattr all carlicense cn departmentnumber displayname employeenumber employeetype facsimiletelephonenumber from_delete gecos gidnumber givenname homedirectory initials ipasshpubkey ipatokenradiusconfiglink ipatokenradiususername ipauserauthtype krbprincipalexpiration krbprincipalname l loginshell mail manager mobile no_members ou pager postalcode preferredlanguage random raw setattr sn st street telephonenumber title uidnumber usercertificate userclass userpassword version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string string string string int string string string string string string string datetime string string string string string string boolean string string string string boolean boolean string string string string string string int bytes string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('stageuser_add', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_stageuser_add_manager

Wrapper method for stageuser_add_manager API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_stageuser_add_manager
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('stageuser_add_manager', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_stageuser_del

Wrapper method for stageuser_del API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_stageuser_del
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('stageuser_del', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_stageuser_find

Wrapper method for stageuser_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item carlicense

=item cn

=item departmentnumber

=item displayname

=item employeenumber

=item employeetype

=item facsimiletelephonenumber

=item gecos

=item gidnumber

=item givenname

=item homedirectory

=item in_group

=item in_hbacrule

=item in_netgroup

=item in_role

=item in_sudorule

=item initials

=item ipatokenradiusconfiglink

=item ipatokenradiususername

=item ipauserauthtype

=item krbprincipalexpiration

=item krbprincipalname

=item l

=item loginshell

=item mail

=item manager

=item mobile

=item no_members

=item not_in_group

=item not_in_hbacrule

=item not_in_netgroup

=item not_in_role

=item not_in_sudorule

=item ou

=item pager

=item pkey_only

=item postalcode

=item preferredlanguage

=item raw

=item sizelimit

=item sn

=item st

=item street

=item telephonenumber

=item timelimit

=item title

=item uid

=item uidnumber

=item usercertificate

=item userclass

=item userpassword

=item version

=back


=back

=cut

sub api_stageuser_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all carlicense cn departmentnumber displayname employeenumber employeetype facsimiletelephonenumber gecos gidnumber givenname homedirectory in_group in_hbacrule in_netgroup in_role in_sudorule initials ipatokenradiusconfiglink ipatokenradiususername ipauserauthtype krbprincipalexpiration krbprincipalname l loginshell mail manager mobile no_members not_in_group not_in_hbacrule not_in_netgroup not_in_role not_in_sudorule ou pager pkey_only postalcode preferredlanguage raw sizelimit sn st street telephonenumber timelimit title uid uidnumber usercertificate userclass userpassword version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string string string string string int string string string string string string string string string string string datetime string string string string string string boolean string string string string string string string boolean string string boolean int string string string string int string string int bytes string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('stageuser_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_stageuser_mod

Wrapper method for stageuser_mod API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item addattr

=item all

=item carlicense

=item cn

=item delattr

=item departmentnumber

=item displayname

=item employeenumber

=item employeetype

=item facsimiletelephonenumber

=item gecos

=item gidnumber

=item givenname

=item homedirectory

=item initials

=item ipasshpubkey

=item ipatokenradiusconfiglink

=item ipatokenradiususername

=item ipauserauthtype

=item krbprincipalexpiration

=item l

=item loginshell

=item mail

=item manager

=item mobile

=item no_members

=item ou

=item pager

=item postalcode

=item preferredlanguage

=item random

=item raw

=item rename

=item rights

=item setattr

=item sn

=item st

=item street

=item telephonenumber

=item title

=item uidnumber

=item usercertificate

=item userclass

=item userpassword

=item version

=back


=back

=cut

sub api_stageuser_mod
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(addattr all carlicense cn delattr departmentnumber displayname employeenumber employeetype facsimiletelephonenumber gecos gidnumber givenname homedirectory initials ipasshpubkey ipatokenradiusconfiglink ipatokenradiususername ipauserauthtype krbprincipalexpiration l loginshell mail manager mobile no_members ou pager postalcode preferredlanguage random raw rename rights setattr sn st street telephonenumber title uidnumber usercertificate userclass userpassword version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string string string string int string string string string string string string datetime string string string string string boolean string string string string boolean boolean string boolean string string string string string string int bytes string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('stageuser_mod', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_stageuser_remove_manager

Wrapper method for stageuser_remove_manager API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_stageuser_remove_manager
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('stageuser_remove_manager', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_stageuser_show

Wrapper method for stageuser_show API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_stageuser_show
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('stageuser_show', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmd_add

Wrapper method for sudocmd_add API

=over

=item Arguments

=over

=item sudocmd

=back


=item Options

=over

=item addattr

=item all

=item description

=item no_members

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_sudocmd_add
{
    my ($self, $sudocmd, %opts) = @_;

    my @opt_keys = qw(addattr all description no_members raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmd_add', [$sudocmd], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmd_del

Wrapper method for sudocmd_del API

=over

=item Arguments

=over

=item sudocmd

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_sudocmd_del
{
    my ($self, $sudocmd, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmd_del', [$sudocmd], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmd_find

Wrapper method for sudocmd_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item description

=item no_members

=item pkey_only

=item raw

=item sizelimit

=item sudocmd

=item timelimit

=item version

=back


=back

=cut

sub api_sudocmd_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all description no_members pkey_only raw sizelimit sudocmd timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean boolean int string int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmd_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmd_mod

Wrapper method for sudocmd_mod API

=over

=item Arguments

=over

=item sudocmd

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item no_members

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_sudocmd_mod
{
    my ($self, $sudocmd, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description no_members raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmd_mod', [$sudocmd], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmd_show

Wrapper method for sudocmd_show API

=over

=item Arguments

=over

=item sudocmd

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_sudocmd_show
{
    my ($self, $sudocmd, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmd_show', [$sudocmd], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmdgroup_add

Wrapper method for sudocmdgroup_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item no_members

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_sudocmdgroup_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description no_members raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmdgroup_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmdgroup_add_member

Wrapper method for sudocmdgroup_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item sudocmd

=item version

=back


=back

=cut

sub api_sudocmdgroup_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw sudocmd version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmdgroup_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmdgroup_del

Wrapper method for sudocmdgroup_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_sudocmdgroup_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmdgroup_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmdgroup_find

Wrapper method for sudocmdgroup_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item no_members

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_sudocmdgroup_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description no_members pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmdgroup_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmdgroup_mod

Wrapper method for sudocmdgroup_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item no_members

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_sudocmdgroup_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description no_members raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmdgroup_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmdgroup_remove_member

Wrapper method for sudocmdgroup_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item sudocmd

=item version

=back


=back

=cut

sub api_sudocmdgroup_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw sudocmd version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmdgroup_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudocmdgroup_show

Wrapper method for sudocmdgroup_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_sudocmdgroup_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudocmdgroup_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_add

Wrapper method for sudorule_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item cmdcategory

=item description

=item externalhost

=item externaluser

=item hostcategory

=item ipaenabledflag

=item ipasudorunasextgroup

=item ipasudorunasextuser

=item ipasudorunasgroupcategory

=item ipasudorunasusercategory

=item no_members

=item raw

=item setattr

=item sudoorder

=item usercategory

=item version

=back


=back

=cut

sub api_sudorule_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all cmdcategory description externalhost externaluser hostcategory ipaenabledflag ipasudorunasextgroup ipasudorunasextuser ipasudorunasgroupcategory ipasudorunasusercategory no_members raw setattr sudoorder usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string boolean string string string string boolean boolean string int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_add_allow_command

Wrapper method for sudorule_add_allow_command API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item sudocmd

=item sudocmdgroup

=item version

=back


=back

=cut

sub api_sudorule_add_allow_command
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw sudocmd sudocmdgroup version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_add_allow_command', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_add_deny_command

Wrapper method for sudorule_add_deny_command API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item sudocmd

=item sudocmdgroup

=item version

=back


=back

=cut

sub api_sudorule_add_deny_command
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw sudocmd sudocmdgroup version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_add_deny_command', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_add_host

Wrapper method for sudorule_add_host API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item hostmask

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_sudorule_add_host
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup hostmask no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_add_host', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_add_option

Wrapper method for sudorule_add_option API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item ipasudoopt

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_sudorule_add_option
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all ipasudoopt no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_add_option', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_add_runasgroup

Wrapper method for sudorule_add_runasgroup API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_sudorule_add_runasgroup
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_add_runasgroup', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_add_runasuser

Wrapper method for sudorule_add_runasuser API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_sudorule_add_runasuser
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_add_runasuser', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_add_user

Wrapper method for sudorule_add_user API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_sudorule_add_user
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_add_user', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_del

Wrapper method for sudorule_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_sudorule_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_disable

Wrapper method for sudorule_disable API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_sudorule_disable
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_disable', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_enable

Wrapper method for sudorule_enable API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_sudorule_enable
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_enable', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_find

Wrapper method for sudorule_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cmdcategory

=item cn

=item description

=item externalhost

=item externaluser

=item hostcategory

=item ipaenabledflag

=item ipasudorunasextgroup

=item ipasudorunasextuser

=item ipasudorunasgroupcategory

=item ipasudorunasusercategory

=item no_members

=item pkey_only

=item raw

=item sizelimit

=item sudoorder

=item timelimit

=item usercategory

=item version

=back


=back

=cut

sub api_sudorule_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cmdcategory cn description externalhost externaluser hostcategory ipaenabledflag ipasudorunasextgroup ipasudorunasextuser ipasudorunasgroupcategory ipasudorunasusercategory no_members pkey_only raw sizelimit sudoorder timelimit usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string string string boolean string string string string boolean boolean boolean int int int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_mod

Wrapper method for sudorule_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item cmdcategory

=item delattr

=item description

=item externalhost

=item externaluser

=item hostcategory

=item ipaenabledflag

=item ipasudorunasextgroup

=item ipasudorunasextuser

=item ipasudorunasgroupcategory

=item ipasudorunasusercategory

=item no_members

=item raw

=item rights

=item setattr

=item sudoorder

=item usercategory

=item version

=back


=back

=cut

sub api_sudorule_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all cmdcategory delattr description externalhost externaluser hostcategory ipaenabledflag ipasudorunasextgroup ipasudorunasextuser ipasudorunasgroupcategory ipasudorunasusercategory no_members raw rights setattr sudoorder usercategory version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string boolean string string string string boolean boolean boolean string int string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_remove_allow_command

Wrapper method for sudorule_remove_allow_command API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item sudocmd

=item sudocmdgroup

=item version

=back


=back

=cut

sub api_sudorule_remove_allow_command
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw sudocmd sudocmdgroup version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_remove_allow_command', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_remove_deny_command

Wrapper method for sudorule_remove_deny_command API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item sudocmd

=item sudocmdgroup

=item version

=back


=back

=cut

sub api_sudorule_remove_deny_command
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw sudocmd sudocmdgroup version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_remove_deny_command', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_remove_host

Wrapper method for sudorule_remove_host API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item host

=item hostgroup

=item hostmask

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_sudorule_remove_host
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all host hostgroup hostmask no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_remove_host', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_remove_option

Wrapper method for sudorule_remove_option API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item ipasudoopt

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_sudorule_remove_option
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all ipasudoopt no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_remove_option', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_remove_runasgroup

Wrapper method for sudorule_remove_runasgroup API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_sudorule_remove_runasgroup
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_remove_runasgroup', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_remove_runasuser

Wrapper method for sudorule_remove_runasuser API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_sudorule_remove_runasuser
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_remove_runasuser', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_remove_user

Wrapper method for sudorule_remove_user API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_sudorule_remove_user
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_remove_user', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_sudorule_show

Wrapper method for sudorule_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item version

=back


=back

=cut

sub api_sudorule_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('sudorule_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_topologysegment_add

Wrapper method for topologysegment_add API

=over

=item Arguments

=over

=item topologysuffixcn

=item cn

=back


=item Options

=over

=item addattr

=item all

=item iparepltoposegmentdirection

=item iparepltoposegmentleftnode

=item iparepltoposegmentrightnode

=item nsds5replicaenabled

=item nsds5replicastripattrs

=item nsds5replicatedattributelist

=item nsds5replicatedattributelisttotal

=item nsds5replicatimeout

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_topologysegment_add
{
    my ($self, $topologysuffixcn, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all iparepltoposegmentdirection iparepltoposegmentleftnode iparepltoposegmentrightnode nsds5replicaenabled nsds5replicastripattrs nsds5replicatedattributelist nsds5replicatedattributelisttotal nsds5replicatimeout raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string string int boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysegment_add', [$topologysuffixcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_topologysegment_del

Wrapper method for topologysegment_del API

=over

=item Arguments

=over

=item topologysuffixcn

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_topologysegment_del
{
    my ($self, $topologysuffixcn, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysegment_del', [$topologysuffixcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_topologysegment_find

Wrapper method for topologysegment_find API

=over

=item Arguments

=over

=item topologysuffixcn

=item criteria

=back


=item Options

=over

=item all

=item cn

=item iparepltoposegmentdirection

=item iparepltoposegmentleftnode

=item iparepltoposegmentrightnode

=item nsds5replicaenabled

=item nsds5replicastripattrs

=item nsds5replicatedattributelist

=item nsds5replicatedattributelisttotal

=item nsds5replicatimeout

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_topologysegment_find
{
    my ($self, $topologysuffixcn, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn iparepltoposegmentdirection iparepltoposegmentleftnode iparepltoposegmentrightnode nsds5replicaenabled nsds5replicastripattrs nsds5replicatedattributelist nsds5replicatedattributelisttotal nsds5replicatimeout pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string string string string string int boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysegment_find', [$topologysuffixcn, $criteria], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_topologysegment_mod

Wrapper method for topologysegment_mod API

=over

=item Arguments

=over

=item topologysuffixcn

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item nsds5replicaenabled

=item nsds5replicastripattrs

=item nsds5replicatedattributelist

=item nsds5replicatedattributelisttotal

=item nsds5replicatimeout

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_topologysegment_mod
{
    my ($self, $topologysuffixcn, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr nsds5replicaenabled nsds5replicastripattrs nsds5replicatedattributelist nsds5replicatedattributelisttotal nsds5replicatimeout raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string int boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysegment_mod', [$topologysuffixcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_topologysegment_reinitialize

Wrapper method for topologysegment_reinitialize API

=over

=item Arguments

=over

=item topologysuffixcn

=item cn

=back


=item Options

=over

=item left

=item right

=item stop

=item version

=back


=back

=cut

sub api_topologysegment_reinitialize
{
    my ($self, $topologysuffixcn, $cn, %opts) = @_;

    my @opt_keys = qw(left right stop version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysegment_reinitialize', [$topologysuffixcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_topologysegment_show

Wrapper method for topologysegment_show API

=over

=item Arguments

=over

=item topologysuffixcn

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_topologysegment_show
{
    my ($self, $topologysuffixcn, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysegment_show', [$topologysuffixcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_topologysuffix_add

Wrapper method for topologysuffix_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item iparepltopoconfroot

=item raw

=item setattr

=item version

=back


=back

=cut

sub api_topologysuffix_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all iparepltopoconfroot raw setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysuffix_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_topologysuffix_del

Wrapper method for topologysuffix_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_topologysuffix_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysuffix_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_topologysuffix_find

Wrapper method for topologysuffix_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item iparepltopoconfroot

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_topologysuffix_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn iparepltopoconfroot pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysuffix_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_topologysuffix_mod

Wrapper method for topologysuffix_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item iparepltopoconfroot

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_topologysuffix_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr iparepltopoconfroot raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysuffix_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_topologysuffix_show

Wrapper method for topologysuffix_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_topologysuffix_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysuffix_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_topologysuffix_verify

Wrapper method for topologysuffix_verify API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_topologysuffix_verify
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('topologysuffix_verify', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_trust_add

Wrapper method for trust_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item base_id

=item bidirectional

=item range_size

=item range_type

=item raw

=item realm_admin

=item realm_passwd

=item realm_server

=item setattr

=item trust_secret

=item trust_type

=item version

=back


=back

=cut

sub api_trust_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all base_id bidirectional range_size range_type raw realm_admin realm_passwd realm_server setattr trust_secret trust_type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean int boolean int string boolean string string string string string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trust_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_trust_del

Wrapper method for trust_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_trust_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trust_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_trust_fetch_domains

Wrapper method for trust_fetch_domains API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item realm_server

=item rights

=item version

=back


=back

=cut

sub api_trust_fetch_domains
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw realm_server rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trust_fetch_domains', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_trust_find

Wrapper method for trust_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item ipantflatname

=item ipantsidblacklistincoming

=item ipantsidblacklistoutgoing

=item ipanttrusteddomainsid

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_trust_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn ipantflatname ipantsidblacklistincoming ipantsidblacklistoutgoing ipanttrusteddomainsid pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trust_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_trust_mod

Wrapper method for trust_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item ipantsidblacklistincoming

=item ipantsidblacklistoutgoing

=item raw

=item rights

=item setattr

=item version

=back


=back

=cut

sub api_trust_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr ipantsidblacklistincoming ipantsidblacklistoutgoing raw rights setattr version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trust_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_trust_resolve

Wrapper method for trust_resolve API

=over

=item No arguments.


=item Options

=over

=item all

=item raw

=item sids

=item version

=back


=back

=cut

sub api_trust_resolve
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all raw sids version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trust_resolve', [], [], \%opts, \%opt_type_map);
}


=item api_trust_show

Wrapper method for trust_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item rights

=item version

=back


=back

=cut

sub api_trust_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trust_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_trustconfig_mod

Wrapper method for trustconfig_mod API

=over

=item No arguments.


=item Options

=over

=item addattr

=item all

=item delattr

=item ipantfallbackprimarygroup

=item raw

=item rights

=item setattr

=item trust_type

=item version

=back


=back

=cut

sub api_trustconfig_mod
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(addattr all delattr ipantfallbackprimarygroup raw rights setattr trust_type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trustconfig_mod', [], [], \%opts, \%opt_type_map);
}


=item api_trustconfig_show

Wrapper method for trustconfig_show API

=over

=item No arguments.


=item Options

=over

=item all

=item raw

=item rights

=item trust_type

=item version

=back


=back

=cut

sub api_trustconfig_show
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all raw rights trust_type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trustconfig_show', [], [], \%opts, \%opt_type_map);
}


=item api_trustdomain_add

Wrapper method for trustdomain_add API

=over

=item Arguments

=over

=item trustcn

=item cn

=back


=item Options

=over

=item addattr

=item all

=item ipantflatname

=item ipanttrusteddomainsid

=item ipanttrustpartner

=item raw

=item setattr

=item trust_type

=item version

=back


=back

=cut

sub api_trustdomain_add
{
    my ($self, $trustcn, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all ipantflatname ipanttrusteddomainsid ipanttrustpartner raw setattr trust_type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trustdomain_add', [$trustcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_trustdomain_del

Wrapper method for trustdomain_del API

=over

=item Arguments

=over

=item trustcn

=item cn

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_trustdomain_del
{
    my ($self, $trustcn, $cn, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trustdomain_del', [$trustcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_trustdomain_disable

Wrapper method for trustdomain_disable API

=over

=item Arguments

=over

=item trustcn

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_trustdomain_disable
{
    my ($self, $trustcn, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trustdomain_disable', [$trustcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_trustdomain_enable

Wrapper method for trustdomain_enable API

=over

=item Arguments

=over

=item trustcn

=item cn

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_trustdomain_enable
{
    my ($self, $trustcn, $cn, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trustdomain_enable', [$trustcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_trustdomain_find

Wrapper method for trustdomain_find API

=over

=item Arguments

=over

=item trustcn

=item criteria

=back


=item Options

=over

=item all

=item cn

=item ipantflatname

=item ipanttrusteddomainsid

=item ipanttrustpartner

=item pkey_only

=item raw

=item sizelimit

=item timelimit

=item version

=back


=back

=cut

sub api_trustdomain_find
{
    my ($self, $trustcn, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn ipantflatname ipanttrusteddomainsid ipanttrustpartner pkey_only raw sizelimit timelimit version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string boolean boolean int int string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trustdomain_find', [$trustcn, $criteria], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_trustdomain_mod

Wrapper method for trustdomain_mod API

=over

=item Arguments

=over

=item trustcn

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item ipantflatname

=item ipanttrusteddomainsid

=item ipanttrustpartner

=item raw

=item rights

=item setattr

=item trust_type

=item version

=back


=back

=cut

sub api_trustdomain_mod
{
    my ($self, $trustcn, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr ipantflatname ipanttrusteddomainsid ipanttrustpartner raw rights setattr trust_type version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string boolean boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('trustdomain_mod', [$trustcn, $cn], ['string', 'string'], \%opts, \%opt_type_map);
}


=item api_user_add

Wrapper method for user_add API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item addattr

=item all

=item carlicense

=item cn

=item departmentnumber

=item displayname

=item employeenumber

=item employeetype

=item facsimiletelephonenumber

=item gecos

=item gidnumber

=item givenname

=item homedirectory

=item initials

=item ipasshpubkey

=item ipatokenradiusconfiglink

=item ipatokenradiususername

=item ipauserauthtype

=item krbprincipalexpiration

=item krbprincipalname

=item l

=item loginshell

=item mail

=item manager

=item mobile

=item no_members

=item noprivate

=item nsaccountlock

=item ou

=item pager

=item postalcode

=item preferredlanguage

=item random

=item raw

=item setattr

=item sn

=item st

=item street

=item telephonenumber

=item title

=item uidnumber

=item usercertificate

=item userclass

=item userpassword

=item version

=back


=back

=cut

sub api_user_add
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(addattr all carlicense cn departmentnumber displayname employeenumber employeetype facsimiletelephonenumber gecos gidnumber givenname homedirectory initials ipasshpubkey ipatokenradiusconfiglink ipatokenradiususername ipauserauthtype krbprincipalexpiration krbprincipalname l loginshell mail manager mobile no_members noprivate nsaccountlock ou pager postalcode preferredlanguage random raw setattr sn st street telephonenumber title uidnumber usercertificate userclass userpassword version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string string string int string string string string string string string datetime string string string string string string boolean boolean boolean string string string string boolean boolean string string string string string string int bytes string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_add', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_add_cert

Wrapper method for user_add_cert API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item usercertificate

=item version

=back


=back

=cut

sub api_user_add_cert
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members raw usercertificate version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean bytes string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_add_cert', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_add_manager

Wrapper method for user_add_manager API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_user_add_manager
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_add_manager', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_del

Wrapper method for user_del API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item continue

=item no_preserve

=item preserve

=item version

=back


=back

=cut

sub api_user_del
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(continue no_preserve preserve version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_del', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_disable

Wrapper method for user_disable API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_user_disable
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_disable', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_enable

Wrapper method for user_enable API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_user_enable
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_enable', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_find

Wrapper method for user_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item carlicense

=item cn

=item departmentnumber

=item displayname

=item employeenumber

=item employeetype

=item facsimiletelephonenumber

=item gecos

=item gidnumber

=item givenname

=item homedirectory

=item in_group

=item in_hbacrule

=item in_netgroup

=item in_role

=item in_sudorule

=item initials

=item ipatokenradiusconfiglink

=item ipatokenradiususername

=item ipauserauthtype

=item krbprincipalexpiration

=item krbprincipalname

=item l

=item loginshell

=item mail

=item manager

=item mobile

=item no_members

=item not_in_group

=item not_in_hbacrule

=item not_in_netgroup

=item not_in_role

=item not_in_sudorule

=item nsaccountlock

=item ou

=item pager

=item pkey_only

=item postalcode

=item preferredlanguage

=item preserved

=item raw

=item sizelimit

=item sn

=item st

=item street

=item telephonenumber

=item timelimit

=item title

=item uid

=item uidnumber

=item usercertificate

=item userclass

=item userpassword

=item version

=item whoami

=back


=back

=cut

sub api_user_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all carlicense cn departmentnumber displayname employeenumber employeetype facsimiletelephonenumber gecos gidnumber givenname homedirectory in_group in_hbacrule in_netgroup in_role in_sudorule initials ipatokenradiusconfiglink ipatokenradiususername ipauserauthtype krbprincipalexpiration krbprincipalname l loginshell mail manager mobile no_members not_in_group not_in_hbacrule not_in_netgroup not_in_role not_in_sudorule nsaccountlock ou pager pkey_only postalcode preferredlanguage preserved raw sizelimit sn st street telephonenumber timelimit title uid uidnumber usercertificate userclass userpassword version whoami);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string string string string string string int string string string string string string string string string string string datetime string string string string string string boolean string string string string string boolean string string boolean string string boolean boolean int string string string string int string string int bytes string string string boolean);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_user_mod

Wrapper method for user_mod API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item addattr

=item all

=item carlicense

=item cn

=item delattr

=item departmentnumber

=item displayname

=item employeenumber

=item employeetype

=item facsimiletelephonenumber

=item gecos

=item gidnumber

=item givenname

=item homedirectory

=item initials

=item ipasshpubkey

=item ipatokenradiusconfiglink

=item ipatokenradiususername

=item ipauserauthtype

=item krbprincipalexpiration

=item l

=item loginshell

=item mail

=item manager

=item mobile

=item no_members

=item nsaccountlock

=item ou

=item pager

=item postalcode

=item preferredlanguage

=item random

=item raw

=item rename

=item rights

=item setattr

=item sn

=item st

=item street

=item telephonenumber

=item title

=item uidnumber

=item usercertificate

=item userclass

=item userpassword

=item version

=back


=back

=cut

sub api_user_mod
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(addattr all carlicense cn delattr departmentnumber displayname employeenumber employeetype facsimiletelephonenumber gecos gidnumber givenname homedirectory initials ipasshpubkey ipatokenradiusconfiglink ipatokenradiususername ipauserauthtype krbprincipalexpiration l loginshell mail manager mobile no_members nsaccountlock ou pager postalcode preferredlanguage random raw rename rights setattr sn st street telephonenumber title uidnumber usercertificate userclass userpassword version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string string string string string string string string int string string string string string string string datetime string string string string string boolean boolean string string string string boolean boolean string boolean string string string string string string int bytes string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_mod', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_remove_cert

Wrapper method for user_remove_cert API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item usercertificate

=item version

=back


=back

=cut

sub api_user_remove_cert
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members raw usercertificate version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean bytes string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_remove_cert', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_remove_manager

Wrapper method for user_remove_manager API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item user

=item version

=back


=back

=cut

sub api_user_remove_manager
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members raw user version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_remove_manager', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_show

Wrapper method for user_show API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item out

=item raw

=item rights

=item version

=back


=back

=cut

sub api_user_show
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members out raw rights version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_show', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_stage

Wrapper method for user_stage API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item continue

=item version

=back


=back

=cut

sub api_user_stage
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(continue version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_stage', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_status

Wrapper method for user_status API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item all

=item no_members

=item raw

=item version

=back


=back

=cut

sub api_user_status
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(all no_members raw version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_status', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_undel

Wrapper method for user_undel API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_user_undel
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_undel', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_user_unlock

Wrapper method for user_unlock API

=over

=item Arguments

=over

=item uid

=back


=item Options

=over

=item version

=back


=back

=cut

sub api_user_unlock
{
    my ($self, $uid, %opts) = @_;

    my @opt_keys = qw(version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('user_unlock', [$uid], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_add

Wrapper method for vault_add API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item description

=item ipavaultpublickey

=item ipavaulttype

=item password

=item password_file

=item public_key_file

=item raw

=item service

=item setattr

=item shared

=item username

=item version

=back


=back

=cut

sub api_vault_add
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all description ipavaultpublickey ipavaulttype password password_file public_key_file raw service setattr shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string bytes string string string string boolean string string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_add', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_add_internal

Wrapper method for vault_add_internal API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item description

=item ipavaultpublickey

=item ipavaultsalt

=item ipavaulttype

=item no_members

=item raw

=item service

=item shared

=item username

=item version

=back


=back

=cut

sub api_vault_add_internal
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all description ipavaultpublickey ipavaultsalt ipavaulttype no_members raw service shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string bytes bytes string boolean boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_add_internal', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_add_member

Wrapper method for vault_add_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item service

=item services

=item shared

=item user

=item username

=item version

=back


=back

=cut

sub api_vault_add_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw service services shared user username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_add_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_add_owner

Wrapper method for vault_add_owner API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item service

=item services

=item shared

=item user

=item username

=item version

=back


=back

=cut

sub api_vault_add_owner
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw service services shared user username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_add_owner', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_archive

Wrapper method for vault_archive API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item data

=item in

=item override_password

=item password

=item password_file

=item raw

=item service

=item shared

=item username

=item version

=back


=back

=cut

sub api_vault_archive
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all data in override_password password password_file raw service shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean bytes string boolean string string boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_archive', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_archive_internal

Wrapper method for vault_archive_internal API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item nonce

=item raw

=item service

=item session_key

=item shared

=item username

=item vault_data

=item version

=back


=back

=cut

sub api_vault_archive_internal
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all nonce raw service session_key shared username vault_data version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean bytes boolean string bytes boolean string bytes string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_archive_internal', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_del

Wrapper method for vault_del API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item continue

=item service

=item shared

=item username

=item version

=back


=back

=cut

sub api_vault_del
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(continue service shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_del', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_find

Wrapper method for vault_find API

=over

=item Arguments

=over

=item criteria

=back


=item Options

=over

=item all

=item cn

=item description

=item ipavaulttype

=item no_members

=item pkey_only

=item raw

=item service

=item services

=item shared

=item sizelimit

=item timelimit

=item username

=item users

=item version

=back


=back

=cut

sub api_vault_find
{
    my ($self, $criteria, %opts) = @_;

    my @opt_keys = qw(all cn description ipavaulttype no_members pkey_only raw service services shared sizelimit timelimit username users version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string boolean boolean boolean string boolean boolean int int string boolean string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_find', [$criteria], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_mod

Wrapper method for vault_mod API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item change_password

=item description

=item ipavaultpublickey

=item ipavaultsalt

=item ipavaulttype

=item new_password

=item new_password_file

=item old_password

=item old_password_file

=item private_key

=item private_key_file

=item public_key_file

=item raw

=item service

=item shared

=item username

=item version

=back


=back

=cut

sub api_vault_mod
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all change_password description ipavaultpublickey ipavaultsalt ipavaulttype new_password new_password_file old_password old_password_file private_key private_key_file public_key_file raw service shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string bytes bytes string string string string string bytes string string boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_mod', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_mod_internal

Wrapper method for vault_mod_internal API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item addattr

=item all

=item delattr

=item description

=item ipavaultpublickey

=item ipavaultsalt

=item ipavaulttype

=item no_members

=item raw

=item rights

=item service

=item setattr

=item shared

=item username

=item version

=back


=back

=cut

sub api_vault_mod_internal
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(addattr all delattr description ipavaultpublickey ipavaultsalt ipavaulttype no_members raw rights service setattr shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(string boolean string string bytes bytes string boolean boolean boolean string string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_mod_internal', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_remove_member

Wrapper method for vault_remove_member API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item service

=item services

=item shared

=item user

=item username

=item version

=back


=back

=cut

sub api_vault_remove_member
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw service services shared user username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_remove_member', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_remove_owner

Wrapper method for vault_remove_owner API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item service

=item services

=item shared

=item user

=item username

=item version

=back


=back

=cut

sub api_vault_remove_owner
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all group no_members raw service services shared user username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_remove_owner', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_retrieve

Wrapper method for vault_retrieve API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item out

=item password

=item password_file

=item private_key

=item private_key_file

=item raw

=item service

=item shared

=item username

=item version

=back


=back

=cut

sub api_vault_retrieve
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all out password password_file private_key private_key_file raw service shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string string string bytes string boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_retrieve', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_retrieve_internal

Wrapper method for vault_retrieve_internal API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item raw

=item service

=item session_key

=item shared

=item username

=item version

=back


=back

=cut

sub api_vault_retrieve_internal
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all raw service session_key shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string bytes boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_retrieve_internal', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vault_show

Wrapper method for vault_show API

=over

=item Arguments

=over

=item cn

=back


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item service

=item shared

=item username

=item version

=back


=back

=cut

sub api_vault_show
{
    my ($self, $cn, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights service shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vault_show', [$cn], ['string'], \%opts, \%opt_type_map);
}


=item api_vaultconfig_show

Wrapper method for vaultconfig_show API

=over

=item No arguments.


=item Options

=over

=item all

=item raw

=item transport_out

=item version

=back


=back

=cut

sub api_vaultconfig_show
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all raw transport_out version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vaultconfig_show', [], [], \%opts, \%opt_type_map);
}


=item api_vaultcontainer_add_owner

Wrapper method for vaultcontainer_add_owner API

=over

=item No arguments.


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item service

=item services

=item shared

=item user

=item username

=item version

=back


=back

=cut

sub api_vaultcontainer_add_owner
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all group no_members raw service services shared user username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vaultcontainer_add_owner', [], [], \%opts, \%opt_type_map);
}


=item api_vaultcontainer_del

Wrapper method for vaultcontainer_del API

=over

=item No arguments.


=item Options

=over

=item continue

=item service

=item shared

=item username

=item version

=back


=back

=cut

sub api_vaultcontainer_del
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(continue service shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vaultcontainer_del', [], [], \%opts, \%opt_type_map);
}


=item api_vaultcontainer_remove_owner

Wrapper method for vaultcontainer_remove_owner API

=over

=item No arguments.


=item Options

=over

=item all

=item group

=item no_members

=item raw

=item service

=item services

=item shared

=item user

=item username

=item version

=back


=back

=cut

sub api_vaultcontainer_remove_owner
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all group no_members raw service services shared user username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean string boolean boolean string string boolean string string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vaultcontainer_remove_owner', [], [], \%opts, \%opt_type_map);
}


=item api_vaultcontainer_show

Wrapper method for vaultcontainer_show API

=over

=item No arguments.


=item Options

=over

=item all

=item no_members

=item raw

=item rights

=item service

=item shared

=item username

=item version

=back


=back

=cut

sub api_vaultcontainer_show
{
    my ($self, %opts) = @_;

    my @opt_keys = qw(all no_members raw rights service shared username version);
    foreach my $key (keys %opts) {
        if (! grep {$key eq $_} @opt_keys) {
            $self->error("Not a valid option key: $key (allowed @opt_keys)");
            return;
        };
    };
    my @opt_types = qw(boolean boolean boolean boolean string boolean string string);
    my %opt_type_map;
    # Hash slice to create the map
    @opt_type_map{@opt_keys} = @opt_types;


    return $self->rpc_api('vaultcontainer_show', [], [], \%opts, \%opt_type_map);
}


=pod

=back

=cut

1;
