#
# This module is generated with gen_api.pl
# Do not modify.
#

package Net::FreeIPA::API;

use strict;
use warnings;

use version;
our $VERSION = version->new("v2.156");

=pod

=head2 Generated API wrapper methods

=over

=cut



=item api_aci_add

Wrapper method for aci_add API


    Create new ACI.
    

=over

=item Required arguments

=over

=item aciname: ACI name (type unicode class Str)

=back


=item  Options

=over

=item permission: Permission ACI grants access to (type unicode class Str)

=item group: User group ACI grants access to (type unicode class Str)

=item permissions: Permissions to grant(read, write, add, delete, all) (arrayref of type unicode class Str)

=item attrs: Attributes (arrayref of type unicode class Str)

=item type: type of IPA object (user, group, host, hostgroup, service, netgroup) (type unicode class StrEnum)

=item memberof: Member of a group (type unicode class Str)

=item filter: Legal LDAP filter (e.g. ou=Engineering) (type unicode class Str)

=item subtree: Subtree to apply ACI to (type unicode class Str)

=item targetgroup: Group to apply ACI to (type unicode class Str)

=item selfaci: Apply ACI to your own entry (self) (type bool class Flag)

=item aciprefix: Prefix used to distinguish ACI types (permission, delegation, selfservice, none) (type unicode class StrEnum)

=item test: Test the ACI syntax but don't write anything (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_aci_add
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('aci_add',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(permission group permissions attrs type memberof filter subtree targetgroup selfaci aciprefix test all raw version)],
        [qw(unicode:0 unicode:0 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 bool:0 unicode:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_aci_del

Wrapper method for aci_del API


    Delete ACI.
    

=over

=item Required arguments

=over

=item aciname: ACI name (type unicode class Str)

=back


=item  Options

=over

=item aciprefix: Prefix used to distinguish ACI types (permission, delegation, selfservice, none) (type unicode class StrEnum)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_aci_del
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('aci_del',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(aciprefix version)],
        [qw(unicode:0 unicode:0)],
    );
}



=item api_aci_find

Wrapper method for aci_find API


    Search for ACIs.

    Returns a list of ACIs

    EXAMPLES:

     To find all ACIs that apply directly to members of the group ipausers:
       ipa aci-find --memberof=ipausers

     To find all ACIs that grant add access:
       ipa aci-find --permissions=add

    Note that the find command only looks for the given text in the set of
    ACIs, it does not evaluate the ACIs to see if something would apply.
    For example, searching on memberof=ipausers will find all ACIs that
    have ipausers as a memberof. There may be other ACIs that apply to
    members of that group indirectly.
    

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item aciname: ACI name (type unicode class Str)

=item permission: Permission ACI grants access to (type unicode class Str)

=item group: User group ACI grants access to (type unicode class Str)

=item permissions: Permissions to grant(read, write, add, delete, all) (arrayref of type unicode class Str)

=item attrs: Attributes (arrayref of type unicode class Str)

=item type: type of IPA object (user, group, host, hostgroup, service, netgroup) (type unicode class StrEnum)

=item memberof: Member of a group (type unicode class Str)

=item filter: Legal LDAP filter (e.g. ou=Engineering) (type unicode class Str)

=item subtree: Subtree to apply ACI to (type unicode class Str)

=item targetgroup: Group to apply ACI to (type unicode class Str)

=item selfaci: Apply ACI to your own entry (self) (type bool class Bool)

=item aciprefix: Prefix used to distinguish ACI types (permission, delegation, selfservice, none) (type unicode class StrEnum)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_aci_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('aci_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(aciname permission group permissions attrs type memberof filter subtree targetgroup selfaci aciprefix pkey_only all raw version)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 bool:0 unicode:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_aci_mod

Wrapper method for aci_mod API


    Modify ACI.
    

=over

=item Required arguments

=over

=item aciname: ACI name (type unicode class Str)

=back


=item  Options

=over

=item permission: Permission ACI grants access to (type unicode class Str)

=item group: User group ACI grants access to (type unicode class Str)

=item permissions: Permissions to grant(read, write, add, delete, all) (arrayref of type unicode class Str)

=item attrs: Attributes (arrayref of type unicode class Str)

=item type: type of IPA object (user, group, host, hostgroup, service, netgroup) (type unicode class StrEnum)

=item memberof: Member of a group (type unicode class Str)

=item filter: Legal LDAP filter (e.g. ou=Engineering) (type unicode class Str)

=item subtree: Subtree to apply ACI to (type unicode class Str)

=item targetgroup: Group to apply ACI to (type unicode class Str)

=item selfaci: Apply ACI to your own entry (self) (type bool class Flag)

=item aciprefix: Prefix used to distinguish ACI types (permission, delegation, selfservice, none) (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_aci_mod
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('aci_mod',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(permission group permissions attrs type memberof filter subtree targetgroup selfaci aciprefix all raw version)],
        [qw(unicode:0 unicode:0 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_aci_rename

Wrapper method for aci_rename API


    Rename an ACI.
    

=over

=item Required arguments

=over

=item aciname: ACI name (type unicode class Str)

=back


=item  Options

=over

=item permission: Permission ACI grants access to (type unicode class Str)

=item group: User group ACI grants access to (type unicode class Str)

=item permissions: Permissions to grant(read, write, add, delete, all) (arrayref of type unicode class Str)

=item attrs: Attributes (arrayref of type unicode class Str)

=item type: type of IPA object (user, group, host, hostgroup, service, netgroup) (type unicode class StrEnum)

=item memberof: Member of a group (type unicode class Str)

=item filter: Legal LDAP filter (e.g. ou=Engineering) (type unicode class Str)

=item subtree: Subtree to apply ACI to (type unicode class Str)

=item targetgroup: Group to apply ACI to (type unicode class Str)

=item selfaci: Apply ACI to your own entry (self) (type bool class Flag)

=item aciprefix: Prefix used to distinguish ACI types (permission, delegation, selfservice, none) (type unicode class StrEnum)

=item newname: New ACI name (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_aci_rename
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('aci_rename',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(permission group permissions attrs type memberof filter subtree targetgroup selfaci aciprefix newname all raw version)],
        [qw(unicode:0 unicode:0 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 bool:0 unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_aci_show

Wrapper method for aci_show API


    Display a single ACI given an ACI name.
    

=over

=item Required arguments

=over

=item aciname: ACI name (type unicode class Str)

=back


=item  Options

=over

=item aciprefix: Prefix used to distinguish ACI types (permission, delegation, selfservice, none) (type unicode class StrEnum)

=item location: Location of the ACI (type DN class DNParam)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_aci_show
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('aci_show',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(aciprefix location all raw version)],
        [qw(unicode:0 DN:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_adtrust_is_enabled

Wrapper method for adtrust_is_enabled API

Determine whether ipa-adtrust-install has been run on this system

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_adtrust_is_enabled
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('adtrust_is_enabled',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_automember_add

Wrapper method for automember_add API


    Add an automember rule.
    

=over

=item Required arguments

=over

=item cn: Automember Rule (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this auto member rule (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automember_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr type all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automember_add_condition

Wrapper method for automember_add_condition API


    Add conditions to an automember rule.
    

=over

=item Required arguments

=over

=item cn: Automember Rule (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this auto member rule (type unicode class Str)

=item automemberinclusiveregex: Inclusive Regex (arrayref of type unicode class Str)

=item automemberexclusiveregex: Exclusive Regex (arrayref of type unicode class Str)

=item key: Attribute to filter via regex. For example fqdn for a host, or manager for a user (type unicode class Str)

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_add_condition
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automember_add_condition',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description automemberinclusiveregex automemberexclusiveregex key type all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automember_default_group_remove

Wrapper method for automember_default_group_remove API


    Remove default (fallback) group for all unmatched entries.
    

=over

=item No required arguments

=item  Options

=over

=item description: A description of this auto member rule (type unicode class Str)

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_default_group_remove
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('automember_default_group_remove',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(description type all raw version)],
        [qw(unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automember_default_group_set

Wrapper method for automember_default_group_set API


    Set default (fallback) group for all unmatched entries.
    

=over

=item No required arguments

=item  Options

=over

=item description: A description of this auto member rule (type unicode class Str)

=item automemberdefaultgroup: Default (fallback) group for entries to land (type unicode class Str)

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_default_group_set
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('automember_default_group_set',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(description automemberdefaultgroup type all raw version)],
        [qw(unicode:0 unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automember_default_group_show

Wrapper method for automember_default_group_show API


    Display information about the default (fallback) automember groups.
    

=over

=item No required arguments

=item  Options

=over

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_default_group_show
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('automember_default_group_show',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(type all raw version)],
        [qw(unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automember_del

Wrapper method for automember_del API


    Delete an automember rule.
    

=over

=item Required arguments

=over

=item cn: Automember Rule (type unicode class Str)

=back


=item  Options

=over

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automember_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(type version)],
        [qw(unicode:0 unicode:0)],
    );
}



=item api_automember_find

Wrapper method for automember_find API


    Search for automember rules.
    

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this auto member rule (type unicode class Str)

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('automember_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(description type all raw version)],
        [qw(unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automember_mod

Wrapper method for automember_mod API


    Modify an automember rule.
    

=over

=item Required arguments

=over

=item cn: Automember Rule (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this auto member rule (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automember_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights type all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automember_rebuild

Wrapper method for automember_rebuild API

Rebuild auto membership.

=over

=item No required arguments

=item  Options

=over

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item users: Rebuild membership for specified users (arrayref of type unicode class Str)

=item hosts: Rebuild membership for specified hosts (arrayref of type unicode class Str)

=item no_wait: Don't wait for rebuilding membership (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_rebuild
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('automember_rebuild',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(type users hosts no_wait all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automember_remove_condition

Wrapper method for automember_remove_condition API


    Remove conditions from an automember rule.
    

=over

=item Required arguments

=over

=item cn: Automember Rule (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this auto member rule (type unicode class Str)

=item automemberinclusiveregex: Inclusive Regex (arrayref of type unicode class Str)

=item automemberexclusiveregex: Exclusive Regex (arrayref of type unicode class Str)

=item key: Attribute to filter via regex. For example fqdn for a host, or manager for a user (type unicode class Str)

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_remove_condition
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automember_remove_condition',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description automemberinclusiveregex automemberexclusiveregex key type all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automember_show

Wrapper method for automember_show API


    Display information about an automember rule.
    

=over

=item Required arguments

=over

=item cn: Automember Rule (type unicode class Str)

=back


=item  Options

=over

=item type: Grouping to which the rule applies (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automember_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automember_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(type all raw version)],
        [qw(unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automountkey_add

Wrapper method for automountkey_add API

Create a new automount key.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapautomountmapname: Automount map name. (type unicode class IA5Str)

=back


=item  Options

=over

=item automountkey: Automount key name. (type unicode class IA5Str)

=item automountinformation: Mount information (type unicode class IA5Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountkey_add
{    
    my ($self, $automountlocationcn, $automountmapautomountmapname, %opts) = @_;
    
    return $self->rpc_api('automountkey_add',    
        [$automountlocationcn, $automountmapautomountmapname],
        [qw(automountlocationcn automountmapautomountmapname)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(automountkey automountinformation setattr addattr all raw version)],
        [qw(unicode:0 unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_automountkey_del

Wrapper method for automountkey_del API

Delete an automount key.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapautomountmapname: Automount map name. (type unicode class IA5Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item automountkey: Automount key name. (type unicode class IA5Str)

=item automountinformation: Mount information (type unicode class IA5Str)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountkey_del
{    
    my ($self, $automountlocationcn, $automountmapautomountmapname, %opts) = @_;
    
    return $self->rpc_api('automountkey_del',    
        [$automountlocationcn, $automountmapautomountmapname],
        [qw(automountlocationcn automountmapautomountmapname)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(continue automountkey automountinformation version)],
        [qw(bool:0 unicode:0 unicode:0 unicode:0)],
    );
}



=item api_automountkey_find

Wrapper method for automountkey_find API

Search for an automount key.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapautomountmapname: Automount map name. (type unicode class IA5Str)

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item automountkey: Automount key name. (type unicode class IA5Str)

=item automountinformation: Mount information (type unicode class IA5Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountkey_find
{    
    my ($self, $automountlocationcn, $automountmapautomountmapname, $criteria, %opts) = @_;
    
    return $self->rpc_api('automountkey_find',    
        [$automountlocationcn, $automountmapautomountmapname, $criteria],
        [qw(automountlocationcn automountmapautomountmapname criteria)],
        [qw(unicode:0 unicode:0 unicode:0)],
        \%opts,
        [qw(automountkey automountinformation timelimit sizelimit all raw version)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automountkey_mod

Wrapper method for automountkey_mod API

Modify an automount key.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapautomountmapname: Automount map name. (type unicode class IA5Str)

=back


=item  Options

=over

=item automountkey: Automount key name. (type unicode class IA5Str)

=item automountinformation: Mount information (type unicode class IA5Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item newautomountinformation: New mount information (type unicode class IA5Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item rename: Rename the automount key object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountkey_mod
{    
    my ($self, $automountlocationcn, $automountmapautomountmapname, %opts) = @_;
    
    return $self->rpc_api('automountkey_mod',    
        [$automountlocationcn, $automountmapautomountmapname],
        [qw(automountlocationcn automountmapautomountmapname)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(automountkey automountinformation setattr addattr delattr rights newautomountinformation all raw version rename)],
        [qw(unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 unicode:0 bool:0 bool:0 unicode:0 unicode:0)],
    );
}



=item api_automountkey_show

Wrapper method for automountkey_show API

Display an automount key.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapautomountmapname: Automount map name. (type unicode class IA5Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item automountkey: Automount key name. (type unicode class IA5Str)

=item automountinformation: Mount information (type unicode class IA5Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountkey_show
{    
    my ($self, $automountlocationcn, $automountmapautomountmapname, %opts) = @_;
    
    return $self->rpc_api('automountkey_show',    
        [$automountlocationcn, $automountmapautomountmapname],
        [qw(automountlocationcn automountmapautomountmapname)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(rights automountkey automountinformation all raw version)],
        [qw(bool:0 unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automountlocation_add

Wrapper method for automountlocation_add API

Create a new automount location.

=over

=item Required arguments

=over

=item cn: Automount location name. (type unicode class Str)

=back


=item  Options

=over

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountlocation_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automountlocation_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(setattr addattr all raw version)],
        [qw(unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_automountlocation_del

Wrapper method for automountlocation_del API

Delete an automount location.

=over

=item Required arguments

=over

=item cn: Automount location name. (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountlocation_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automountlocation_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_automountlocation_find

Wrapper method for automountlocation_find API

Search for an automount location.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Automount location name. (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("location") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountlocation_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('automountlocation_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_automountlocation_import

Wrapper method for automountlocation_import API

Import automount files for a specific location.

=over

=item Required arguments

=over

=item cn: Automount location name. (type unicode class Str)

=item masterfile: Automount master file. (type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous operation mode. Errors are reported but the process continues. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountlocation_import
{    
    my ($self, $cn, $masterfile, %opts) = @_;
    
    return $self->rpc_api('automountlocation_import',    
        [$cn, $masterfile],
        [qw(cn masterfile)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_automountlocation_show

Wrapper method for automountlocation_show API

Display an automount location.

=over

=item Required arguments

=over

=item cn: Automount location name. (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountlocation_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automountlocation_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automountlocation_tofiles

Wrapper method for automountlocation_tofiles API

Generate automount files for a specific location.

=over

=item Required arguments

=over

=item cn: Automount location name. (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountlocation_tofiles
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('automountlocation_tofiles',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_automountmap_add

Wrapper method for automountmap_add API

Create a new automount map.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapname: Automount map name. (type unicode class IA5Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountmap_add
{    
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;
    
    return $self->rpc_api('automountmap_add',    
        [$automountlocationcn, $automountmapname],
        [qw(automountlocationcn automountmapname)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(description setattr addattr all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_automountmap_add_indirect

Wrapper method for automountmap_add_indirect API

Create a new indirect mount point.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapname: Automount map name. (type unicode class IA5Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item key: Mount point (type unicode class Str)

=item parentmap: Name of parent automount map (default: auto.master). (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountmap_add_indirect
{    
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;
    
    return $self->rpc_api('automountmap_add_indirect',    
        [$automountlocationcn, $automountmapname],
        [qw(automountlocationcn automountmapname)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(description setattr addattr key parentmap all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automountmap_del

Wrapper method for automountmap_del API

Delete an automount map.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapname: Automount map name. (arrayref of type unicode class IA5Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountmap_del
{    
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;
    
    return $self->rpc_api('automountmap_del',    
        [$automountlocationcn, $automountmapname],
        [qw(automountlocationcn automountmapname)],
        [qw(unicode:0 unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_automountmap_find

Wrapper method for automountmap_find API

Search for an automount map.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item automountmapname: Automount map name. (type unicode class IA5Str)

=item description: Description (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("map") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountmap_find
{    
    my ($self, $automountlocationcn, $criteria, %opts) = @_;
    
    return $self->rpc_api('automountmap_find',    
        [$automountlocationcn, $criteria],
        [qw(automountlocationcn criteria)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(automountmapname description timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_automountmap_mod

Wrapper method for automountmap_mod API

Modify an automount map.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapname: Automount map name. (type unicode class IA5Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountmap_mod
{    
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;
    
    return $self->rpc_api('automountmap_mod',    
        [$automountlocationcn, $automountmapname],
        [qw(automountlocationcn automountmapname)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_automountmap_show

Wrapper method for automountmap_show API

Display an automount map.

=over

=item Required arguments

=over

=item automountlocationcn: Automount location name. (type unicode class Str)

=item automountmapname: Automount map name. (type unicode class IA5Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_automountmap_show
{    
    my ($self, $automountlocationcn, $automountmapname, %opts) = @_;
    
    return $self->rpc_api('automountmap_show',    
        [$automountlocationcn, $automountmapname],
        [qw(automountlocationcn automountmapname)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_batch

Wrapper method for batch API

None

=over

=item Required arguments

=over

=item methods: Nested Methods to execute (arrayref of type object class Any)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_batch
{    
    my ($self, $methods, %opts) = @_;
    
    return $self->rpc_api('batch',    
        [$methods],
        [qw(methods)],
        [qw(object:1)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_ca_is_enabled

Wrapper method for ca_is_enabled API


    Checks if any of the servers has the CA service enabled.
    

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_ca_is_enabled
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('ca_is_enabled',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_caacl_add

Wrapper method for caacl_add API

Create a new CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item ipacertprofilecategory: Profile category the ACL applies to (type unicode class StrEnum)

=item usercategory: User category the ACL applies to (type unicode class StrEnum)

=item hostcategory: Host category the ACL applies to (type unicode class StrEnum)

=item servicecategory: Service category the ACL applies to (type unicode class StrEnum)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipaenabledflag ipacertprofilecategory usercategory hostcategory servicecategory setattr addattr all raw version no_members)],
        [qw(unicode:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_caacl_add_host

Wrapper method for caacl_add_host API

Add target hosts and hostgroups to a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_add_host
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_add_host',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_caacl_add_profile

Wrapper method for caacl_add_profile API

Add profiles to a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item certprofile: Certificate Profiles to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_add_profile
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_add_profile',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members certprofile)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_caacl_add_service

Wrapper method for caacl_add_service API

Add services to a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item service: services to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_add_service
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_add_service',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members service)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_caacl_add_user

Wrapper method for caacl_add_user API

Add users and groups to a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_add_user
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_add_user',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_caacl_del

Wrapper method for caacl_del API

Delete a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_caacl_disable

Wrapper method for caacl_disable API

Disable a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_disable
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_disable',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_caacl_enable

Wrapper method for caacl_enable API

Enable a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_enable
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_enable',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_caacl_find

Wrapper method for caacl_find API

Search for CA ACLs.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: ACL name (type unicode class Str)

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item ipacertprofilecategory: Profile category the ACL applies to (type unicode class StrEnum)

=item usercategory: User category the ACL applies to (type unicode class StrEnum)

=item hostcategory: Host category the ACL applies to (type unicode class StrEnum)

=item servicecategory: Service category the ACL applies to (type unicode class StrEnum)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('caacl_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description ipaenabledflag ipacertprofilecategory usercategory hostcategory servicecategory timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_caacl_mod

Wrapper method for caacl_mod API

Modify a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item ipacertprofilecategory: Profile category the ACL applies to (type unicode class StrEnum)

=item usercategory: User category the ACL applies to (type unicode class StrEnum)

=item hostcategory: Host category the ACL applies to (type unicode class StrEnum)

=item servicecategory: Service category the ACL applies to (type unicode class StrEnum)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipaenabledflag ipacertprofilecategory usercategory hostcategory servicecategory setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_caacl_remove_host

Wrapper method for caacl_remove_host API

Remove target hosts and hostgroups from a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_remove_host
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_remove_host',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_caacl_remove_profile

Wrapper method for caacl_remove_profile API

Remove profiles from a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item certprofile: Certificate Profiles to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_remove_profile
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_remove_profile',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members certprofile)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_caacl_remove_service

Wrapper method for caacl_remove_service API

Remove services from a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item service: services to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_remove_service
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_remove_service',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members service)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_caacl_remove_user

Wrapper method for caacl_remove_user API

Remove users and groups from a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_remove_user
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_remove_user',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_caacl_show

Wrapper method for caacl_show API

Display the properties of a CA ACL.

=over

=item Required arguments

=over

=item cn: ACL name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_caacl_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('caacl_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_cert_find

Wrapper method for cert_find API

Search for existing certificates.

=over

=item No required arguments

=item  Options

=over

=item subject: Subject (type unicode class Str)

=item revocation_reason: Reason for revoking the certificate (0-10) (type int class Int)

=item min_serial_number: minimum serial number (type int class Int)

=item max_serial_number: maximum serial number (type int class Int)

=item exactly: match the common name exactly (type bool class Flag)

=item validnotafter_from: Valid not after from this date (YYYY-mm-dd) (type unicode class Str)

=item validnotafter_to: Valid not after to this date (YYYY-mm-dd) (type unicode class Str)

=item validnotbefore_from: Valid not before from this date (YYYY-mm-dd) (type unicode class Str)

=item validnotbefore_to: Valid not before to this date (YYYY-mm-dd) (type unicode class Str)

=item issuedon_from: Issued on from this date (YYYY-mm-dd) (type unicode class Str)

=item issuedon_to: Issued on to this date (YYYY-mm-dd) (type unicode class Str)

=item revokedon_from: Revoked on from this date (YYYY-mm-dd) (type unicode class Str)

=item revokedon_to: Revoked on to this date (YYYY-mm-dd) (type unicode class Str)

=item sizelimit: Maximum number of certs returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cert_find
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('cert_find',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(subject revocation_reason min_serial_number max_serial_number exactly validnotafter_from validnotafter_to validnotbefore_from validnotbefore_to issuedon_from issuedon_to revokedon_from revokedon_to sizelimit all raw version)],
        [qw(unicode:0 int:0 int:0 int:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_cert_remove_hold

Wrapper method for cert_remove_hold API

Take a revoked certificate off hold.

=over

=item Required arguments

=over

=item serial_number: Serial number in decimal or if prefixed with 0x in hexadecimal (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cert_remove_hold
{    
    my ($self, $serial_number, %opts) = @_;
    
    return $self->rpc_api('cert_remove_hold',    
        [$serial_number],
        [qw(serial_number)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_cert_request

Wrapper method for cert_request API

Submit a certificate signing request.

=over

=item Required arguments

=over

=item csr: CSR (type unicode class File)

=back


=item  Options

=over

=item principal: Principal for this certificate (e.g. HTTP/test.example.com) (type unicode class Str)

=item request_type: <request_type> (type unicode class Str)

=item add: automatically add the principal if it doesn't exist (type bool class Flag)

=item profile_id: Certificate Profile to use (type unicode class Str)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cert_request
{    
    my ($self, $csr, %opts) = @_;
    
    return $self->rpc_api('cert_request',    
        [$csr],
        [qw(csr)],
        [qw(unicode:0)],
        \%opts,
        [qw(principal request_type add profile_id version)],
        [qw(unicode:0 unicode:0 bool:0 unicode:0 unicode:0)],
    );
}



=item api_cert_revoke

Wrapper method for cert_revoke API

Revoke a certificate.

=over

=item Required arguments

=over

=item serial_number: Serial number in decimal or if prefixed with 0x in hexadecimal (type unicode class Str)

=back


=item  Options

=over

=item revocation_reason: Reason for revoking the certificate (0-10) (type int class Int)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cert_revoke
{    
    my ($self, $serial_number, %opts) = @_;
    
    return $self->rpc_api('cert_revoke',    
        [$serial_number],
        [qw(serial_number)],
        [qw(unicode:0)],
        \%opts,
        [qw(revocation_reason version)],
        [qw(int:0 unicode:0)],
    );
}



=item api_cert_show

Wrapper method for cert_show API

Retrieve an existing certificate.

=over

=item Required arguments

=over

=item serial_number: Serial number in decimal or if prefixed with 0x in hexadecimal (type unicode class Str)

=back


=item  Options

=over

=item out: File to store the certificate in. (type unicode class Str)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cert_show
{    
    my ($self, $serial_number, %opts) = @_;
    
    return $self->rpc_api('cert_show',    
        [$serial_number],
        [qw(serial_number)],
        [qw(unicode:0)],
        \%opts,
        [qw(out version)],
        [qw(unicode:0 unicode:0)],
    );
}



=item api_cert_status

Wrapper method for cert_status API

Check the status of a certificate signing request.

=over

=item Required arguments

=over

=item request_id: Request id (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cert_status
{    
    my ($self, $request_id, %opts) = @_;
    
    return $self->rpc_api('cert_status',    
        [$request_id],
        [qw(request_id)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_certprofile_del

Wrapper method for certprofile_del API

Delete a Certificate Profile.

=over

=item Required arguments

=over

=item cn: Profile ID for referring to this profile (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_certprofile_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('certprofile_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_certprofile_find

Wrapper method for certprofile_find API

Search for Certificate Profiles.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Profile ID for referring to this profile (type unicode class Str)

=item description: Brief description of this profile (type unicode class Str)

=item ipacertprofilestoreissued: Whether to store certs issued using this profile (type bool class Bool)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("id") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_certprofile_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('certprofile_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description ipacertprofilestoreissued timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 unicode:0 bool:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_certprofile_import

Wrapper method for certprofile_import API

Import a Certificate Profile.

=over

=item Required arguments

=over

=item cn: Profile ID for referring to this profile (type unicode class Str)

=back


=item  Options

=over

=item description: Brief description of this profile (type unicode class Str)

=item ipacertprofilestoreissued: Whether to store certs issued using this profile (type bool class Bool)

=item file: Filename of a raw profile. The XML format is not supported. (type unicode class File)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_certprofile_import
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('certprofile_import',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipacertprofilestoreissued file all raw version)],
        [qw(unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_certprofile_mod

Wrapper method for certprofile_mod API

Modify Certificate Profile configuration.

=over

=item Required arguments

=over

=item cn: Profile ID for referring to this profile (type unicode class Str)

=back


=item  Options

=over

=item description: Brief description of this profile (type unicode class Str)

=item ipacertprofilestoreissued: Whether to store certs issued using this profile (type bool class Bool)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item file: File containing profile configuration (type unicode class File)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_certprofile_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('certprofile_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipacertprofilestoreissued setattr addattr delattr rights file all raw version)],
        [qw(unicode:0 bool:0 unicode:1 unicode:1 unicode:1 bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_certprofile_show

Wrapper method for certprofile_show API

Display the properties of a Certificate Profile.

=over

=item Required arguments

=over

=item cn: Profile ID for referring to this profile (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item out: Write profile configuration to file (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_certprofile_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('certprofile_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights out all raw version)],
        [qw(bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_compat_is_enabled

Wrapper method for compat_is_enabled API

Determine whether Schema Compatibility plugin is configured to serve trusted domain users and groups

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_compat_is_enabled
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('compat_is_enabled',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_config_mod

Wrapper method for config_mod API

Modify configuration options.

=over

=item No required arguments

=item  Options

=over

=item ipamaxusernamelength: Maximum username length (type int class Int)

=item ipahomesrootdir: Default location of home directories (type unicode class IA5Str)

=item ipadefaultloginshell: Default shell for new users (type unicode class Str)

=item ipadefaultprimarygroup: Default group for new users (type unicode class Str)

=item ipadefaultemaildomain: Default e-mail domain (type unicode class Str)

=item ipasearchtimelimit: Maximum amount of time (seconds) for a search (> 0, or -1 for unlimited) (type int class Int)

=item ipasearchrecordslimit: Maximum number of records to search (-1 is unlimited) (type int class Int)

=item ipausersearchfields: A comma-separated list of fields to search in when searching for users (type unicode class IA5Str)

=item ipagroupsearchfields: A comma-separated list of fields to search in when searching for groups (type unicode class IA5Str)

=item ipamigrationenabled: Enable migration mode (type bool class Bool)

=item ipagroupobjectclasses: Default group objectclasses (comma-separated list) (arrayref of type unicode class Str)

=item ipauserobjectclasses: Default user objectclasses (comma-separated list) (arrayref of type unicode class Str)

=item ipapwdexpadvnotify: Number of days's notice of impending password expiration (type int class Int)

=item ipaconfigstring: Extra hashes to generate in password plug-in (arrayref of type unicode class StrEnum)

=item ipaselinuxusermaporder: Order in increasing priority of SELinux users, delimited by $ (type unicode class Str)

=item ipaselinuxusermapdefault: Default SELinux user when no match is found in SELinux map rule (type unicode class Str)

=item ipakrbauthzdata: Default types of PAC supported for services (arrayref of type unicode class StrEnum)

=item ipauserauthtype: Default types of supported user authentication (arrayref of type unicode class StrEnum)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_config_mod
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('config_mod',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(ipamaxusernamelength ipahomesrootdir ipadefaultloginshell ipadefaultprimarygroup ipadefaultemaildomain ipasearchtimelimit ipasearchrecordslimit ipausersearchfields ipagroupsearchfields ipamigrationenabled ipagroupobjectclasses ipauserobjectclasses ipapwdexpadvnotify ipaconfigstring ipaselinuxusermaporder ipaselinuxusermapdefault ipakrbauthzdata ipauserauthtype setattr addattr delattr rights all raw version)],
        [qw(int:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 int:0 unicode:0 unicode:0 bool:0 unicode:1 unicode:1 int:0 unicode:1 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_config_show

Wrapper method for config_show API

Show the current configuration.

=over

=item No required arguments

=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_config_show
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('config_show',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_cosentry_add

Wrapper method for cosentry_add API

None

=over

=item Required arguments

=over

=item cn: <cn> (type unicode class Str)

=back


=item  Options

=over

=item krbpwdpolicyreference: <krbpwdpolicyreference> (type DN class DNParam)

=item cospriority: <cospriority> (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cosentry_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('cosentry_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(krbpwdpolicyreference cospriority setattr addattr all raw version)],
        [qw(DN:0 int:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_cosentry_del

Wrapper method for cosentry_del API

None

=over

=item Required arguments

=over

=item cn: <cn> (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cosentry_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('cosentry_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_cosentry_find

Wrapper method for cosentry_find API

None

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: <cn> (type unicode class Str)

=item krbpwdpolicyreference: <krbpwdpolicyreference> (type DN class DNParam)

=item cospriority: <cospriority> (type int class Int)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("cn") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cosentry_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('cosentry_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn krbpwdpolicyreference cospriority timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 DN:0 int:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_cosentry_mod

Wrapper method for cosentry_mod API

None

=over

=item Required arguments

=over

=item cn: <cn> (type unicode class Str)

=back


=item  Options

=over

=item krbpwdpolicyreference: <krbpwdpolicyreference> (type DN class DNParam)

=item cospriority: <cospriority> (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cosentry_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('cosentry_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(krbpwdpolicyreference cospriority setattr addattr delattr rights all raw version)],
        [qw(DN:0 int:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_cosentry_show

Wrapper method for cosentry_show API

None

=over

=item Required arguments

=over

=item cn: <cn> (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_cosentry_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('cosentry_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_delegation_add

Wrapper method for delegation_add API

Add a new delegation.

=over

=item Required arguments

=over

=item aciname: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item permissions: Permissions to grant (read, write). Default is write. (arrayref of type unicode class Str)

=item attrs: Attributes to which the delegation applies (arrayref of type unicode class Str)

=item memberof: User group to apply delegation to (type unicode class Str)

=item group: User group ACI grants access to (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_delegation_add
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('delegation_add',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(permissions attrs memberof group all raw version)],
        [qw(unicode:1 unicode:1 unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_delegation_del

Wrapper method for delegation_del API

Delete a delegation.

=over

=item Required arguments

=over

=item aciname: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_delegation_del
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('delegation_del',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_delegation_find

Wrapper method for delegation_find API

Search for delegations.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item aciname: Delegation name (type unicode class Str)

=item permissions: Permissions to grant (read, write). Default is write. (arrayref of type unicode class Str)

=item attrs: Attributes to which the delegation applies (arrayref of type unicode class Str)

=item memberof: User group to apply delegation to (type unicode class Str)

=item group: User group ACI grants access to (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_delegation_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('delegation_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(aciname permissions attrs memberof group pkey_only all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:0 unicode:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_delegation_mod

Wrapper method for delegation_mod API

Modify a delegation.

=over

=item Required arguments

=over

=item aciname: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item permissions: Permissions to grant (read, write). Default is write. (arrayref of type unicode class Str)

=item attrs: Attributes to which the delegation applies (arrayref of type unicode class Str)

=item memberof: User group to apply delegation to (type unicode class Str)

=item group: User group ACI grants access to (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_delegation_mod
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('delegation_mod',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(permissions attrs memberof group all raw version)],
        [qw(unicode:1 unicode:1 unicode:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_delegation_show

Wrapper method for delegation_show API

Display information about a delegation.

=over

=item Required arguments

=over

=item aciname: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_delegation_show
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('delegation_show',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version)],
        [qw(bool:0 bool:0 unicode:0)],
    );
}



=item api_dns_is_enabled

Wrapper method for dns_is_enabled API


    Checks if any of the servers has the DNS service enabled.
    

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dns_is_enabled
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('dns_is_enabled',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dns_resolve

Wrapper method for dns_resolve API

Resolve a host name in DNS.

=over

=item Required arguments

=over

=item hostname: Hostname (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dns_resolve
{    
    my ($self, $hostname, %opts) = @_;
    
    return $self->rpc_api('dns_resolve',    
        [$hostname],
        [qw(hostname)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dnsconfig_mod

Wrapper method for dnsconfig_mod API

Modify global DNS configuration.

=over

=item No required arguments

=item  Options

=over

=item idnsforwarders: Global forwarders. A custom port can be specified for each forwarder using a standard format "IP_ADDRESS port PORT" (arrayref of type unicode class Str)

=item idnsforwardpolicy: Global forwarding policy. Set to "none" to disable any configured global forwarders. (type unicode class StrEnum)

=item idnsallowsyncptr: Allow synchronization of forward (A, AAAA) and reverse (PTR) records (type bool class Bool)

=item idnszonerefresh: Zone refresh interval (type object class DeprecatedParam)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsconfig_mod
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('dnsconfig_mod',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(idnsforwarders idnsforwardpolicy idnsallowsyncptr idnszonerefresh setattr addattr delattr rights all raw version)],
        [qw(unicode:1 unicode:0 bool:0 object:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnsconfig_show

Wrapper method for dnsconfig_show API

Show the current global DNS configuration.

=over

=item No required arguments

=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsconfig_show
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('dnsconfig_show',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnsforwardzone_add

Wrapper method for dnsforwardzone_add API

Create new DNS forward zone.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item name_from_ip: IP network to create reverse zone name from (type unicode class Str)

=item idnsforwarders: Per-zone forwarders. A custom port can be specified for each forwarder using a standard format "IP_ADDRESS port PORT" (arrayref of type unicode class Str)

=item idnsforwardpolicy: Per-zone conditional forwarding policy. Set to "none" to disable forwarding to global forwarder for this zone. In that case, conditional zone forwarders are disregarded. (type unicode class StrEnum)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsforwardzone_add
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsforwardzone_add',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(name_from_ip idnsforwarders idnsforwardpolicy setattr addattr all raw version)],
        [qw(unicode:0 unicode:1 unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnsforwardzone_add_permission

Wrapper method for dnsforwardzone_add_permission API

Add a permission for per-forward zone access delegation.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsforwardzone_add_permission
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsforwardzone_add_permission',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dnsforwardzone_del

Wrapper method for dnsforwardzone_del API

Delete DNS forward zone.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (arrayref of type DNSName class DNSNameParam)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsforwardzone_del
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsforwardzone_del',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_dnsforwardzone_disable

Wrapper method for dnsforwardzone_disable API

Disable DNS Forward Zone.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsforwardzone_disable
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsforwardzone_disable',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dnsforwardzone_enable

Wrapper method for dnsforwardzone_enable API

Enable DNS Forward Zone.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsforwardzone_enable
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsforwardzone_enable',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dnsforwardzone_find

Wrapper method for dnsforwardzone_find API

Search for DNS forward zones.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=item name_from_ip: IP network to create reverse zone name from (type unicode class Str)

=item idnszoneactive: Is zone active? (type bool class Bool)

=item idnsforwarders: Per-zone forwarders. A custom port can be specified for each forwarder using a standard format "IP_ADDRESS port PORT" (arrayref of type unicode class Str)

=item idnsforwardpolicy: Per-zone conditional forwarding policy. Set to "none" to disable forwarding to global forwarder for this zone. In that case, conditional zone forwarders are disregarded. (type unicode class StrEnum)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsforwardzone_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('dnsforwardzone_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(idnsname name_from_ip idnszoneactive idnsforwarders idnsforwardpolicy timelimit sizelimit all raw version pkey_only)],
        [qw(DNSName:0 unicode:0 bool:0 unicode:1 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_dnsforwardzone_mod

Wrapper method for dnsforwardzone_mod API

Modify DNS forward zone.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item name_from_ip: IP network to create reverse zone name from (type unicode class Str)

=item idnsforwarders: Per-zone forwarders. A custom port can be specified for each forwarder using a standard format "IP_ADDRESS port PORT" (arrayref of type unicode class Str)

=item idnsforwardpolicy: Per-zone conditional forwarding policy. Set to "none" to disable forwarding to global forwarder for this zone. In that case, conditional zone forwarders are disregarded. (type unicode class StrEnum)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsforwardzone_mod
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsforwardzone_mod',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(name_from_ip idnsforwarders idnsforwardpolicy setattr addattr delattr rights all raw version)],
        [qw(unicode:0 unicode:1 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnsforwardzone_remove_permission

Wrapper method for dnsforwardzone_remove_permission API

Remove a permission for per-forward zone access delegation.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsforwardzone_remove_permission
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsforwardzone_remove_permission',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dnsforwardzone_show

Wrapper method for dnsforwardzone_show API

Display information about a DNS forward zone.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsforwardzone_show
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsforwardzone_show',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnsrecord_add

Wrapper method for dnsrecord_add API

Add new DNS resource record.

=over

=item Required arguments

=over

=item dnszoneidnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=item idnsname: Record name (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item dnsttl: Time to live (type int class Int)

=item dnsclass: <dnsclass> (type unicode class StrEnum)

=item arecord: Raw A records (arrayref of type unicode class ARecord)

=item a_part_ip_address: IP Address (type unicode class Str)

=item a_extra_create_reverse: Create reverse record for this IP Address (type bool class Flag)

=item aaaarecord: Raw AAAA records (arrayref of type unicode class AAAARecord)

=item aaaa_part_ip_address: IP Address (type unicode class Str)

=item aaaa_extra_create_reverse: Create reverse record for this IP Address (type bool class Flag)

=item a6record: Raw A6 records (arrayref of type unicode class A6Record)

=item a6_part_data: Record data (type unicode class Str)

=item afsdbrecord: Raw AFSDB records (arrayref of type unicode class AFSDBRecord)

=item afsdb_part_subtype: Subtype (type int class Int)

=item afsdb_part_hostname: Hostname (type DNSName class DNSNameParam)

=item aplrecord: Raw APL records (arrayref of type unicode class APLRecord)

=item certrecord: Raw CERT records (arrayref of type unicode class CERTRecord)

=item cert_part_type: Certificate Type (type int class Int)

=item cert_part_key_tag: Key Tag (type int class Int)

=item cert_part_algorithm: Algorithm (type int class Int)

=item cert_part_certificate_or_crl: Certificate/CRL (type unicode class Str)

=item cnamerecord: Raw CNAME records (arrayref of type unicode class CNAMERecord)

=item cname_part_hostname: A hostname which this alias hostname points to (type DNSName class DNSNameParam)

=item dhcidrecord: Raw DHCID records (arrayref of type unicode class DHCIDRecord)

=item dlvrecord: Raw DLV records (arrayref of type unicode class DLVRecord)

=item dlv_part_key_tag: Key Tag (type int class Int)

=item dlv_part_algorithm: Algorithm (type int class Int)

=item dlv_part_digest_type: Digest Type (type int class Int)

=item dlv_part_digest: Digest (type unicode class Str)

=item dnamerecord: Raw DNAME records (arrayref of type unicode class DNAMERecord)

=item dname_part_target: Target (type DNSName class DNSNameParam)

=item dsrecord: Raw DS records (arrayref of type unicode class DSRecord)

=item ds_part_key_tag: Key Tag (type int class Int)

=item ds_part_algorithm: Algorithm (type int class Int)

=item ds_part_digest_type: Digest Type (type int class Int)

=item ds_part_digest: Digest (type unicode class Str)

=item hiprecord: Raw HIP records (arrayref of type unicode class HIPRecord)

=item ipseckeyrecord: Raw IPSECKEY records (arrayref of type unicode class IPSECKEYRecord)

=item keyrecord: Raw KEY records (arrayref of type unicode class KEYRecord)

=item kxrecord: Raw KX records (arrayref of type unicode class KXRecord)

=item kx_part_preference: Preference given to this exchanger. Lower values are more preferred (type int class Int)

=item kx_part_exchanger: A host willing to act as a key exchanger (type DNSName class DNSNameParam)

=item locrecord: Raw LOC records (arrayref of type unicode class LOCRecord)

=item loc_part_lat_deg: Degrees Latitude (type int class Int)

=item loc_part_lat_min: Minutes Latitude (type int class Int)

=item loc_part_lat_sec: Seconds Latitude (type Decimal class Decimal)

=item loc_part_lat_dir: Direction Latitude (type unicode class StrEnum)

=item loc_part_lon_deg: Degrees Longitude (type int class Int)

=item loc_part_lon_min: Minutes Longitude (type int class Int)

=item loc_part_lon_sec: Seconds Longitude (type Decimal class Decimal)

=item loc_part_lon_dir: Direction Longitude (type unicode class StrEnum)

=item loc_part_altitude: Altitude (type Decimal class Decimal)

=item loc_part_size: Size (type Decimal class Decimal)

=item loc_part_h_precision: Horizontal Precision (type Decimal class Decimal)

=item loc_part_v_precision: Vertical Precision (type Decimal class Decimal)

=item mxrecord: Raw MX records (arrayref of type unicode class MXRecord)

=item mx_part_preference: Preference given to this exchanger. Lower values are more preferred (type int class Int)

=item mx_part_exchanger: A host willing to act as a mail exchanger (type DNSName class DNSNameParam)

=item naptrrecord: Raw NAPTR records (arrayref of type unicode class NAPTRRecord)

=item naptr_part_order: Order (type int class Int)

=item naptr_part_preference: Preference (type int class Int)

=item naptr_part_flags: Flags (type unicode class Str)

=item naptr_part_service: Service (type unicode class Str)

=item naptr_part_regexp: Regular Expression (type unicode class Str)

=item naptr_part_replacement: Replacement (type unicode class Str)

=item nsrecord: Raw NS records (arrayref of type unicode class NSRecord)

=item ns_part_hostname: Hostname (type DNSName class DNSNameParam)

=item nsecrecord: Raw NSEC records (arrayref of type unicode class NSECRecord)

=item ptrrecord: Raw PTR records (arrayref of type unicode class PTRRecord)

=item ptr_part_hostname: The hostname this reverse record points to (type DNSName class DNSNameParam)

=item rrsigrecord: Raw RRSIG records (arrayref of type unicode class RRSIGRecord)

=item rprecord: Raw RP records (arrayref of type unicode class RPRecord)

=item sigrecord: Raw SIG records (arrayref of type unicode class SIGRecord)

=item spfrecord: Raw SPF records (arrayref of type unicode class SPFRecord)

=item srvrecord: Raw SRV records (arrayref of type unicode class SRVRecord)

=item srv_part_priority: Priority (type int class Int)

=item srv_part_weight: Weight (type int class Int)

=item srv_part_port: Port (type int class Int)

=item srv_part_target: The domain name of the target host or '.' if the service is decidedly not available at this domain (type DNSName class DNSNameParam)

=item sshfprecord: Raw SSHFP records (arrayref of type unicode class SSHFPRecord)

=item sshfp_part_algorithm: Algorithm (type int class Int)

=item sshfp_part_fp_type: Fingerprint Type (type int class Int)

=item sshfp_part_fingerprint: Fingerprint (type unicode class Str)

=item tlsarecord: Raw TLSA records (arrayref of type unicode class TLSARecord)

=item tlsa_part_cert_usage: Certificate Usage (type int class Int)

=item tlsa_part_selector: Selector (type int class Int)

=item tlsa_part_matching_type: Matching Type (type int class Int)

=item tlsa_part_cert_association_data: Certificate Association Data (type unicode class Str)

=item txtrecord: Raw TXT records (arrayref of type unicode class TXTRecord)

=item txt_part_data: Text Data (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item force: force NS record creation even if its hostname is not in DNS (type bool class Flag)

=item structured: Parse all raw DNS records and return them in a structured way (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsrecord_add
{    
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsrecord_add',    
        [$dnszoneidnsname, $idnsname],
        [qw(dnszoneidnsname idnsname)],
        [qw(DNSName:0 DNSName:0)],
        \%opts,
        [qw(dnsttl dnsclass arecord a_part_ip_address a_extra_create_reverse aaaarecord aaaa_part_ip_address aaaa_extra_create_reverse a6record a6_part_data afsdbrecord afsdb_part_subtype afsdb_part_hostname aplrecord certrecord cert_part_type cert_part_key_tag cert_part_algorithm cert_part_certificate_or_crl cnamerecord cname_part_hostname dhcidrecord dlvrecord dlv_part_key_tag dlv_part_algorithm dlv_part_digest_type dlv_part_digest dnamerecord dname_part_target dsrecord ds_part_key_tag ds_part_algorithm ds_part_digest_type ds_part_digest hiprecord ipseckeyrecord keyrecord kxrecord kx_part_preference kx_part_exchanger locrecord loc_part_lat_deg loc_part_lat_min loc_part_lat_sec loc_part_lat_dir loc_part_lon_deg loc_part_lon_min loc_part_lon_sec loc_part_lon_dir loc_part_altitude loc_part_size loc_part_h_precision loc_part_v_precision mxrecord mx_part_preference mx_part_exchanger naptrrecord naptr_part_order naptr_part_preference naptr_part_flags naptr_part_service naptr_part_regexp naptr_part_replacement nsrecord ns_part_hostname nsecrecord ptrrecord ptr_part_hostname rrsigrecord rprecord sigrecord spfrecord srvrecord srv_part_priority srv_part_weight srv_part_port srv_part_target sshfprecord sshfp_part_algorithm sshfp_part_fp_type sshfp_part_fingerprint tlsarecord tlsa_part_cert_usage tlsa_part_selector tlsa_part_matching_type tlsa_part_cert_association_data txtrecord txt_part_data setattr addattr force structured all raw version)],
        [qw(int:0 unicode:0 unicode:1 unicode:0 bool:0 unicode:1 unicode:0 bool:0 unicode:1 unicode:0 unicode:1 int:0 DNSName:0 unicode:1 unicode:1 int:0 int:0 int:0 unicode:0 unicode:1 DNSName:0 unicode:1 unicode:1 int:0 int:0 int:0 unicode:0 unicode:1 DNSName:0 unicode:1 int:0 int:0 int:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 int:0 DNSName:0 unicode:1 int:0 int:0 Decimal:0 unicode:0 int:0 int:0 Decimal:0 unicode:0 Decimal:0 Decimal:0 Decimal:0 Decimal:0 unicode:1 int:0 DNSName:0 unicode:1 int:0 int:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 DNSName:0 unicode:1 unicode:1 DNSName:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 int:0 int:0 int:0 DNSName:0 unicode:1 int:0 int:0 unicode:0 unicode:1 int:0 int:0 int:0 unicode:0 unicode:1 unicode:0 unicode:1 unicode:1 bool:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnsrecord_del

Wrapper method for dnsrecord_del API

Delete DNS resource record.

=over

=item Required arguments

=over

=item dnszoneidnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=item idnsname: Record name (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item dnsttl: Time to live (type int class Int)

=item dnsclass: <dnsclass> (type unicode class StrEnum)

=item arecord: Raw A records (arrayref of type unicode class ARecord)

=item aaaarecord: Raw AAAA records (arrayref of type unicode class AAAARecord)

=item a6record: Raw A6 records (arrayref of type unicode class A6Record)

=item afsdbrecord: Raw AFSDB records (arrayref of type unicode class AFSDBRecord)

=item aplrecord: Raw APL records (arrayref of type unicode class APLRecord)

=item certrecord: Raw CERT records (arrayref of type unicode class CERTRecord)

=item cnamerecord: Raw CNAME records (arrayref of type unicode class CNAMERecord)

=item dhcidrecord: Raw DHCID records (arrayref of type unicode class DHCIDRecord)

=item dlvrecord: Raw DLV records (arrayref of type unicode class DLVRecord)

=item dnamerecord: Raw DNAME records (arrayref of type unicode class DNAMERecord)

=item dsrecord: Raw DS records (arrayref of type unicode class DSRecord)

=item hiprecord: Raw HIP records (arrayref of type unicode class HIPRecord)

=item ipseckeyrecord: Raw IPSECKEY records (arrayref of type unicode class IPSECKEYRecord)

=item keyrecord: Raw KEY records (arrayref of type unicode class KEYRecord)

=item kxrecord: Raw KX records (arrayref of type unicode class KXRecord)

=item locrecord: Raw LOC records (arrayref of type unicode class LOCRecord)

=item mxrecord: Raw MX records (arrayref of type unicode class MXRecord)

=item naptrrecord: Raw NAPTR records (arrayref of type unicode class NAPTRRecord)

=item nsrecord: Raw NS records (arrayref of type unicode class NSRecord)

=item nsecrecord: Raw NSEC records (arrayref of type unicode class NSECRecord)

=item ptrrecord: Raw PTR records (arrayref of type unicode class PTRRecord)

=item rrsigrecord: Raw RRSIG records (arrayref of type unicode class RRSIGRecord)

=item rprecord: Raw RP records (arrayref of type unicode class RPRecord)

=item sigrecord: Raw SIG records (arrayref of type unicode class SIGRecord)

=item spfrecord: Raw SPF records (arrayref of type unicode class SPFRecord)

=item srvrecord: Raw SRV records (arrayref of type unicode class SRVRecord)

=item sshfprecord: Raw SSHFP records (arrayref of type unicode class SSHFPRecord)

=item tlsarecord: Raw TLSA records (arrayref of type unicode class TLSARecord)

=item txtrecord: Raw TXT records (arrayref of type unicode class TXTRecord)

=item del_all: Delete all associated records (type bool class Flag)

=item structured: Parse all raw DNS records and return them in a structured way (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsrecord_del
{    
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsrecord_del',    
        [$dnszoneidnsname, $idnsname],
        [qw(dnszoneidnsname idnsname)],
        [qw(DNSName:0 DNSName:0)],
        \%opts,
        [qw(dnsttl dnsclass arecord aaaarecord a6record afsdbrecord aplrecord certrecord cnamerecord dhcidrecord dlvrecord dnamerecord dsrecord hiprecord ipseckeyrecord keyrecord kxrecord locrecord mxrecord naptrrecord nsrecord nsecrecord ptrrecord rrsigrecord rprecord sigrecord spfrecord srvrecord sshfprecord tlsarecord txtrecord del_all structured version)],
        [qw(int:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnsrecord_delentry

Wrapper method for dnsrecord_delentry API


    Delete DNS record entry.
    

=over

=item Required arguments

=over

=item dnszoneidnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=item idnsname: Record name (arrayref of type DNSName class DNSNameParam)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsrecord_delentry
{    
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsrecord_delentry',    
        [$dnszoneidnsname, $idnsname],
        [qw(dnszoneidnsname idnsname)],
        [qw(DNSName:0 DNSName:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_dnsrecord_find

Wrapper method for dnsrecord_find API

Search for DNS resources.

=over

=item Required arguments

=over

=item dnszoneidnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item idnsname: Record name (type DNSName class DNSNameParam)

=item dnsttl: Time to live (type int class Int)

=item dnsclass: <dnsclass> (type unicode class StrEnum)

=item arecord: Raw A records (arrayref of type unicode class ARecord)

=item aaaarecord: Raw AAAA records (arrayref of type unicode class AAAARecord)

=item a6record: Raw A6 records (arrayref of type unicode class A6Record)

=item afsdbrecord: Raw AFSDB records (arrayref of type unicode class AFSDBRecord)

=item aplrecord: Raw APL records (arrayref of type unicode class APLRecord)

=item certrecord: Raw CERT records (arrayref of type unicode class CERTRecord)

=item cnamerecord: Raw CNAME records (arrayref of type unicode class CNAMERecord)

=item dhcidrecord: Raw DHCID records (arrayref of type unicode class DHCIDRecord)

=item dlvrecord: Raw DLV records (arrayref of type unicode class DLVRecord)

=item dnamerecord: Raw DNAME records (arrayref of type unicode class DNAMERecord)

=item dsrecord: Raw DS records (arrayref of type unicode class DSRecord)

=item hiprecord: Raw HIP records (arrayref of type unicode class HIPRecord)

=item ipseckeyrecord: Raw IPSECKEY records (arrayref of type unicode class IPSECKEYRecord)

=item keyrecord: Raw KEY records (arrayref of type unicode class KEYRecord)

=item kxrecord: Raw KX records (arrayref of type unicode class KXRecord)

=item locrecord: Raw LOC records (arrayref of type unicode class LOCRecord)

=item mxrecord: Raw MX records (arrayref of type unicode class MXRecord)

=item naptrrecord: Raw NAPTR records (arrayref of type unicode class NAPTRRecord)

=item nsrecord: Raw NS records (arrayref of type unicode class NSRecord)

=item nsecrecord: Raw NSEC records (arrayref of type unicode class NSECRecord)

=item ptrrecord: Raw PTR records (arrayref of type unicode class PTRRecord)

=item rrsigrecord: Raw RRSIG records (arrayref of type unicode class RRSIGRecord)

=item rprecord: Raw RP records (arrayref of type unicode class RPRecord)

=item sigrecord: Raw SIG records (arrayref of type unicode class SIGRecord)

=item spfrecord: Raw SPF records (arrayref of type unicode class SPFRecord)

=item srvrecord: Raw SRV records (arrayref of type unicode class SRVRecord)

=item sshfprecord: Raw SSHFP records (arrayref of type unicode class SSHFPRecord)

=item tlsarecord: Raw TLSA records (arrayref of type unicode class TLSARecord)

=item txtrecord: Raw TXT records (arrayref of type unicode class TXTRecord)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item structured: Parse all raw DNS records and return them in a structured way (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsrecord_find
{    
    my ($self, $dnszoneidnsname, $criteria, %opts) = @_;
    
    return $self->rpc_api('dnsrecord_find',    
        [$dnszoneidnsname, $criteria],
        [qw(dnszoneidnsname criteria)],
        [qw(DNSName:0 unicode:0)],
        \%opts,
        [qw(idnsname dnsttl dnsclass arecord aaaarecord a6record afsdbrecord aplrecord certrecord cnamerecord dhcidrecord dlvrecord dnamerecord dsrecord hiprecord ipseckeyrecord keyrecord kxrecord locrecord mxrecord naptrrecord nsrecord nsecrecord ptrrecord rrsigrecord rprecord sigrecord spfrecord srvrecord sshfprecord tlsarecord txtrecord timelimit sizelimit structured all raw version pkey_only)],
        [qw(DNSName:0 int:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 int:0 int:0 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_dnsrecord_mod

Wrapper method for dnsrecord_mod API

Modify a DNS resource record.

=over

=item Required arguments

=over

=item dnszoneidnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=item idnsname: Record name (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item dnsttl: Time to live (type int class Int)

=item dnsclass: <dnsclass> (type unicode class StrEnum)

=item arecord: Raw A records (arrayref of type unicode class ARecord)

=item a_part_ip_address: IP Address (type unicode class Str)

=item aaaarecord: Raw AAAA records (arrayref of type unicode class AAAARecord)

=item aaaa_part_ip_address: IP Address (type unicode class Str)

=item a6record: Raw A6 records (arrayref of type unicode class A6Record)

=item a6_part_data: Record data (type unicode class Str)

=item afsdbrecord: Raw AFSDB records (arrayref of type unicode class AFSDBRecord)

=item afsdb_part_subtype: Subtype (type int class Int)

=item afsdb_part_hostname: Hostname (type DNSName class DNSNameParam)

=item aplrecord: Raw APL records (arrayref of type unicode class APLRecord)

=item certrecord: Raw CERT records (arrayref of type unicode class CERTRecord)

=item cert_part_type: Certificate Type (type int class Int)

=item cert_part_key_tag: Key Tag (type int class Int)

=item cert_part_algorithm: Algorithm (type int class Int)

=item cert_part_certificate_or_crl: Certificate/CRL (type unicode class Str)

=item cnamerecord: Raw CNAME records (arrayref of type unicode class CNAMERecord)

=item cname_part_hostname: A hostname which this alias hostname points to (type DNSName class DNSNameParam)

=item dhcidrecord: Raw DHCID records (arrayref of type unicode class DHCIDRecord)

=item dlvrecord: Raw DLV records (arrayref of type unicode class DLVRecord)

=item dlv_part_key_tag: Key Tag (type int class Int)

=item dlv_part_algorithm: Algorithm (type int class Int)

=item dlv_part_digest_type: Digest Type (type int class Int)

=item dlv_part_digest: Digest (type unicode class Str)

=item dnamerecord: Raw DNAME records (arrayref of type unicode class DNAMERecord)

=item dname_part_target: Target (type DNSName class DNSNameParam)

=item dsrecord: Raw DS records (arrayref of type unicode class DSRecord)

=item ds_part_key_tag: Key Tag (type int class Int)

=item ds_part_algorithm: Algorithm (type int class Int)

=item ds_part_digest_type: Digest Type (type int class Int)

=item ds_part_digest: Digest (type unicode class Str)

=item hiprecord: Raw HIP records (arrayref of type unicode class HIPRecord)

=item ipseckeyrecord: Raw IPSECKEY records (arrayref of type unicode class IPSECKEYRecord)

=item keyrecord: Raw KEY records (arrayref of type unicode class KEYRecord)

=item kxrecord: Raw KX records (arrayref of type unicode class KXRecord)

=item kx_part_preference: Preference given to this exchanger. Lower values are more preferred (type int class Int)

=item kx_part_exchanger: A host willing to act as a key exchanger (type DNSName class DNSNameParam)

=item locrecord: Raw LOC records (arrayref of type unicode class LOCRecord)

=item loc_part_lat_deg: Degrees Latitude (type int class Int)

=item loc_part_lat_min: Minutes Latitude (type int class Int)

=item loc_part_lat_sec: Seconds Latitude (type Decimal class Decimal)

=item loc_part_lat_dir: Direction Latitude (type unicode class StrEnum)

=item loc_part_lon_deg: Degrees Longitude (type int class Int)

=item loc_part_lon_min: Minutes Longitude (type int class Int)

=item loc_part_lon_sec: Seconds Longitude (type Decimal class Decimal)

=item loc_part_lon_dir: Direction Longitude (type unicode class StrEnum)

=item loc_part_altitude: Altitude (type Decimal class Decimal)

=item loc_part_size: Size (type Decimal class Decimal)

=item loc_part_h_precision: Horizontal Precision (type Decimal class Decimal)

=item loc_part_v_precision: Vertical Precision (type Decimal class Decimal)

=item mxrecord: Raw MX records (arrayref of type unicode class MXRecord)

=item mx_part_preference: Preference given to this exchanger. Lower values are more preferred (type int class Int)

=item mx_part_exchanger: A host willing to act as a mail exchanger (type DNSName class DNSNameParam)

=item naptrrecord: Raw NAPTR records (arrayref of type unicode class NAPTRRecord)

=item naptr_part_order: Order (type int class Int)

=item naptr_part_preference: Preference (type int class Int)

=item naptr_part_flags: Flags (type unicode class Str)

=item naptr_part_service: Service (type unicode class Str)

=item naptr_part_regexp: Regular Expression (type unicode class Str)

=item naptr_part_replacement: Replacement (type unicode class Str)

=item nsrecord: Raw NS records (arrayref of type unicode class NSRecord)

=item ns_part_hostname: Hostname (type DNSName class DNSNameParam)

=item nsecrecord: Raw NSEC records (arrayref of type unicode class NSECRecord)

=item ptrrecord: Raw PTR records (arrayref of type unicode class PTRRecord)

=item ptr_part_hostname: The hostname this reverse record points to (type DNSName class DNSNameParam)

=item rrsigrecord: Raw RRSIG records (arrayref of type unicode class RRSIGRecord)

=item rprecord: Raw RP records (arrayref of type unicode class RPRecord)

=item sigrecord: Raw SIG records (arrayref of type unicode class SIGRecord)

=item spfrecord: Raw SPF records (arrayref of type unicode class SPFRecord)

=item srvrecord: Raw SRV records (arrayref of type unicode class SRVRecord)

=item srv_part_priority: Priority (type int class Int)

=item srv_part_weight: Weight (type int class Int)

=item srv_part_port: Port (type int class Int)

=item srv_part_target: The domain name of the target host or '.' if the service is decidedly not available at this domain (type DNSName class DNSNameParam)

=item sshfprecord: Raw SSHFP records (arrayref of type unicode class SSHFPRecord)

=item sshfp_part_algorithm: Algorithm (type int class Int)

=item sshfp_part_fp_type: Fingerprint Type (type int class Int)

=item sshfp_part_fingerprint: Fingerprint (type unicode class Str)

=item tlsarecord: Raw TLSA records (arrayref of type unicode class TLSARecord)

=item tlsa_part_cert_usage: Certificate Usage (type int class Int)

=item tlsa_part_selector: Selector (type int class Int)

=item tlsa_part_matching_type: Matching Type (type int class Int)

=item tlsa_part_cert_association_data: Certificate Association Data (type unicode class Str)

=item txtrecord: Raw TXT records (arrayref of type unicode class TXTRecord)

=item txt_part_data: Text Data (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item structured: Parse all raw DNS records and return them in a structured way (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item rename: Rename the DNS resource record object (type DNSName class DNSNameParam)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsrecord_mod
{    
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsrecord_mod',    
        [$dnszoneidnsname, $idnsname],
        [qw(dnszoneidnsname idnsname)],
        [qw(DNSName:0 DNSName:0)],
        \%opts,
        [qw(dnsttl dnsclass arecord a_part_ip_address aaaarecord aaaa_part_ip_address a6record a6_part_data afsdbrecord afsdb_part_subtype afsdb_part_hostname aplrecord certrecord cert_part_type cert_part_key_tag cert_part_algorithm cert_part_certificate_or_crl cnamerecord cname_part_hostname dhcidrecord dlvrecord dlv_part_key_tag dlv_part_algorithm dlv_part_digest_type dlv_part_digest dnamerecord dname_part_target dsrecord ds_part_key_tag ds_part_algorithm ds_part_digest_type ds_part_digest hiprecord ipseckeyrecord keyrecord kxrecord kx_part_preference kx_part_exchanger locrecord loc_part_lat_deg loc_part_lat_min loc_part_lat_sec loc_part_lat_dir loc_part_lon_deg loc_part_lon_min loc_part_lon_sec loc_part_lon_dir loc_part_altitude loc_part_size loc_part_h_precision loc_part_v_precision mxrecord mx_part_preference mx_part_exchanger naptrrecord naptr_part_order naptr_part_preference naptr_part_flags naptr_part_service naptr_part_regexp naptr_part_replacement nsrecord ns_part_hostname nsecrecord ptrrecord ptr_part_hostname rrsigrecord rprecord sigrecord spfrecord srvrecord srv_part_priority srv_part_weight srv_part_port srv_part_target sshfprecord sshfp_part_algorithm sshfp_part_fp_type sshfp_part_fingerprint tlsarecord tlsa_part_cert_usage tlsa_part_selector tlsa_part_matching_type tlsa_part_cert_association_data txtrecord txt_part_data setattr addattr delattr rights structured all raw version rename)],
        [qw(int:0 unicode:0 unicode:1 unicode:0 unicode:1 unicode:0 unicode:1 unicode:0 unicode:1 int:0 DNSName:0 unicode:1 unicode:1 int:0 int:0 int:0 unicode:0 unicode:1 DNSName:0 unicode:1 unicode:1 int:0 int:0 int:0 unicode:0 unicode:1 DNSName:0 unicode:1 int:0 int:0 int:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 int:0 DNSName:0 unicode:1 int:0 int:0 Decimal:0 unicode:0 int:0 int:0 Decimal:0 unicode:0 Decimal:0 Decimal:0 Decimal:0 Decimal:0 unicode:1 int:0 DNSName:0 unicode:1 int:0 int:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 DNSName:0 unicode:1 unicode:1 DNSName:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 int:0 int:0 int:0 DNSName:0 unicode:1 int:0 int:0 unicode:0 unicode:1 int:0 int:0 int:0 unicode:0 unicode:1 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 bool:0 unicode:0 DNSName:0)],
    );
}



=item api_dnsrecord_show

Wrapper method for dnsrecord_show API

Display DNS resource.

=over

=item Required arguments

=over

=item dnszoneidnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=item idnsname: Record name (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item structured: Parse all raw DNS records and return them in a structured way (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnsrecord_show
{    
    my ($self, $dnszoneidnsname, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnsrecord_show',    
        [$dnszoneidnsname, $idnsname],
        [qw(dnszoneidnsname idnsname)],
        [qw(DNSName:0 DNSName:0)],
        \%opts,
        [qw(rights structured all raw version)],
        [qw(bool:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnszone_add

Wrapper method for dnszone_add API

Create new DNS zone (SOA record).

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item name_from_ip: IP network to create reverse zone name from (type unicode class Str)

=item idnsforwarders: Per-zone forwarders. A custom port can be specified for each forwarder using a standard format "IP_ADDRESS port PORT" (arrayref of type unicode class Str)

=item idnsforwardpolicy: Per-zone conditional forwarding policy. Set to "none" to disable forwarding to global forwarder for this zone. In that case, conditional zone forwarders are disregarded. (type unicode class StrEnum)

=item idnssoamname: Authoritative nameserver domain name (type DNSName class DNSNameParam)

=item idnssoarname: Administrator e-mail address (type DNSName class DNSNameParam)

=item idnssoaserial: SOA record serial number (type int class Int)

=item idnssoarefresh: SOA record refresh time (type int class Int)

=item idnssoaretry: SOA record retry time (type int class Int)

=item idnssoaexpire: SOA record expire time (type int class Int)

=item idnssoaminimum: How long should negative responses be cached (type int class Int)

=item dnsttl: Time to live for records at zone apex (type int class Int)

=item dnsclass: <dnsclass> (type unicode class StrEnum)

=item idnsupdatepolicy: BIND update policy (type unicode class Str)

=item idnsallowdynupdate: Allow dynamic updates. (type bool class Bool)

=item idnsallowquery: Semicolon separated list of IP addresses or networks which are allowed to issue queries (type unicode class Str)

=item idnsallowtransfer: Semicolon separated list of IP addresses or networks which are allowed to transfer the zone (type unicode class Str)

=item idnsallowsyncptr: Allow synchronization of forward (A, AAAA) and reverse (PTR) records in the zone (type bool class Bool)

=item idnssecinlinesigning: Allow inline DNSSEC signing of records in the zone (type bool class Bool)

=item nsec3paramrecord: NSEC3PARAM record for zone in format: hash_algorithm flags iterations salt (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item force: Force DNS zone creation even if nameserver is not resolvable. (type bool class Flag)

=item ip_address: <ip_address> (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnszone_add
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnszone_add',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(name_from_ip idnsforwarders idnsforwardpolicy idnssoamname idnssoarname idnssoaserial idnssoarefresh idnssoaretry idnssoaexpire idnssoaminimum dnsttl dnsclass idnsupdatepolicy idnsallowdynupdate idnsallowquery idnsallowtransfer idnsallowsyncptr idnssecinlinesigning nsec3paramrecord setattr addattr force ip_address all raw version)],
        [qw(unicode:0 unicode:1 unicode:0 DNSName:0 DNSName:0 int:0 int:0 int:0 int:0 int:0 int:0 unicode:0 unicode:0 bool:0 unicode:0 unicode:0 bool:0 bool:0 unicode:0 unicode:1 unicode:1 bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnszone_add_permission

Wrapper method for dnszone_add_permission API

Add a permission for per-zone access delegation.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnszone_add_permission
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnszone_add_permission',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dnszone_del

Wrapper method for dnszone_del API

Delete DNS zone (SOA record).

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (arrayref of type DNSName class DNSNameParam)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnszone_del
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnszone_del',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_dnszone_disable

Wrapper method for dnszone_disable API

Disable DNS Zone.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnszone_disable
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnszone_disable',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dnszone_enable

Wrapper method for dnszone_enable API

Enable DNS Zone.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnszone_enable
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnszone_enable',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dnszone_find

Wrapper method for dnszone_find API

Search for DNS zones (SOA records).

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=item name_from_ip: IP network to create reverse zone name from (type unicode class Str)

=item idnszoneactive: Is zone active? (type bool class Bool)

=item idnsforwarders: Per-zone forwarders. A custom port can be specified for each forwarder using a standard format "IP_ADDRESS port PORT" (arrayref of type unicode class Str)

=item idnsforwardpolicy: Per-zone conditional forwarding policy. Set to "none" to disable forwarding to global forwarder for this zone. In that case, conditional zone forwarders are disregarded. (type unicode class StrEnum)

=item idnssoamname: Authoritative nameserver domain name (type DNSName class DNSNameParam)

=item idnssoarname: Administrator e-mail address (type DNSName class DNSNameParam)

=item idnssoaserial: SOA record serial number (type int class Int)

=item idnssoarefresh: SOA record refresh time (type int class Int)

=item idnssoaretry: SOA record retry time (type int class Int)

=item idnssoaexpire: SOA record expire time (type int class Int)

=item idnssoaminimum: How long should negative responses be cached (type int class Int)

=item dnsttl: Time to live for records at zone apex (type int class Int)

=item dnsclass: <dnsclass> (type unicode class StrEnum)

=item idnsupdatepolicy: BIND update policy (type unicode class Str)

=item idnsallowdynupdate: Allow dynamic updates. (type bool class Bool)

=item idnsallowquery: Semicolon separated list of IP addresses or networks which are allowed to issue queries (type unicode class Str)

=item idnsallowtransfer: Semicolon separated list of IP addresses or networks which are allowed to transfer the zone (type unicode class Str)

=item idnsallowsyncptr: Allow synchronization of forward (A, AAAA) and reverse (PTR) records in the zone (type bool class Bool)

=item idnssecinlinesigning: Allow inline DNSSEC signing of records in the zone (type bool class Bool)

=item nsec3paramrecord: NSEC3PARAM record for zone in format: hash_algorithm flags iterations salt (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item forward_only: Search for forward zones only (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnszone_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('dnszone_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(idnsname name_from_ip idnszoneactive idnsforwarders idnsforwardpolicy idnssoamname idnssoarname idnssoaserial idnssoarefresh idnssoaretry idnssoaexpire idnssoaminimum dnsttl dnsclass idnsupdatepolicy idnsallowdynupdate idnsallowquery idnsallowtransfer idnsallowsyncptr idnssecinlinesigning nsec3paramrecord timelimit sizelimit forward_only all raw version pkey_only)],
        [qw(DNSName:0 unicode:0 bool:0 unicode:1 unicode:0 DNSName:0 DNSName:0 int:0 int:0 int:0 int:0 int:0 int:0 unicode:0 unicode:0 bool:0 unicode:0 unicode:0 bool:0 bool:0 unicode:0 int:0 int:0 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_dnszone_mod

Wrapper method for dnszone_mod API

Modify DNS zone (SOA record).

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item name_from_ip: IP network to create reverse zone name from (type unicode class Str)

=item idnsforwarders: Per-zone forwarders. A custom port can be specified for each forwarder using a standard format "IP_ADDRESS port PORT" (arrayref of type unicode class Str)

=item idnsforwardpolicy: Per-zone conditional forwarding policy. Set to "none" to disable forwarding to global forwarder for this zone. In that case, conditional zone forwarders are disregarded. (type unicode class StrEnum)

=item idnssoamname: Authoritative nameserver domain name (type DNSName class DNSNameParam)

=item idnssoarname: Administrator e-mail address (type DNSName class DNSNameParam)

=item idnssoaserial: SOA record serial number (type int class Int)

=item idnssoarefresh: SOA record refresh time (type int class Int)

=item idnssoaretry: SOA record retry time (type int class Int)

=item idnssoaexpire: SOA record expire time (type int class Int)

=item idnssoaminimum: How long should negative responses be cached (type int class Int)

=item dnsttl: Time to live for records at zone apex (type int class Int)

=item dnsclass: <dnsclass> (type unicode class StrEnum)

=item idnsupdatepolicy: BIND update policy (type unicode class Str)

=item idnsallowdynupdate: Allow dynamic updates. (type bool class Bool)

=item idnsallowquery: Semicolon separated list of IP addresses or networks which are allowed to issue queries (type unicode class Str)

=item idnsallowtransfer: Semicolon separated list of IP addresses or networks which are allowed to transfer the zone (type unicode class Str)

=item idnsallowsyncptr: Allow synchronization of forward (A, AAAA) and reverse (PTR) records in the zone (type bool class Bool)

=item idnssecinlinesigning: Allow inline DNSSEC signing of records in the zone (type bool class Bool)

=item nsec3paramrecord: NSEC3PARAM record for zone in format: hash_algorithm flags iterations salt (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item force: Force nameserver change even if nameserver not in DNS (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnszone_mod
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnszone_mod',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(name_from_ip idnsforwarders idnsforwardpolicy idnssoamname idnssoarname idnssoaserial idnssoarefresh idnssoaretry idnssoaexpire idnssoaminimum dnsttl dnsclass idnsupdatepolicy idnsallowdynupdate idnsallowquery idnsallowtransfer idnsallowsyncptr idnssecinlinesigning nsec3paramrecord setattr addattr delattr rights force all raw version)],
        [qw(unicode:0 unicode:1 unicode:0 DNSName:0 DNSName:0 int:0 int:0 int:0 int:0 int:0 int:0 unicode:0 unicode:0 bool:0 unicode:0 unicode:0 bool:0 bool:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_dnszone_remove_permission

Wrapper method for dnszone_remove_permission API

Remove a permission for per-zone access delegation.

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnszone_remove_permission
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnszone_remove_permission',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_dnszone_show

Wrapper method for dnszone_show API

Display information about a DNS zone (SOA record).

=over

=item Required arguments

=over

=item idnsname: Zone name (FQDN) (type DNSName class DNSNameParam)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_dnszone_show
{    
    my ($self, $idnsname, %opts) = @_;
    
    return $self->rpc_api('dnszone_show',    
        [$idnsname],
        [qw(idnsname)],
        [qw(DNSName:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_domainlevel_get

Wrapper method for domainlevel_get API

Query current Domain Level.

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_domainlevel_get
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('domainlevel_get',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_domainlevel_set

Wrapper method for domainlevel_set API

Change current Domain Level.

=over

=item Required arguments

=over

=item ipadomainlevel: Domain Level (type int class Int)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_domainlevel_set
{    
    my ($self, $ipadomainlevel, %opts) = @_;
    
    return $self->rpc_api('domainlevel_set',    
        [$ipadomainlevel],
        [qw(ipadomainlevel)],
        [qw(int:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_env

Wrapper method for env API

Show environment variables.

=over

=item Required arguments

=over

=item variables: unknown (type unknown class unknown)

=back


=item  Options

=over

=item server: Forward to server instead of running locally (type bool class Flag)

=item all: retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_env
{    
    my ($self, $variables, %opts) = @_;
    
    return $self->rpc_api('env',    
        [$variables],
        [qw(variables)],
        [qw(unknown:0)],
        \%opts,
        [qw(server all version)],
        [qw(bool:0 bool:0 unicode:0)],
    );
}



=item api_group_add

Wrapper method for group_add API

Create a new group.

=over

=item Required arguments

=over

=item cn: Group name (type unicode class Str)

=back


=item  Options

=over

=item description: Group description (type unicode class Str)

=item gidnumber: GID (use this option to set it manually) (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item nonposix: Create as a non-POSIX group (type bool class Flag)

=item external: Allow adding external non-IPA members from trusted domains (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_group_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('group_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description gidnumber setattr addattr nonposix external all raw version no_members)],
        [qw(unicode:0 int:0 unicode:1 unicode:1 bool:0 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_group_add_member

Wrapper method for group_add_member API

Add members to a group.

=over

=item Required arguments

=over

=item cn: Group name (type unicode class Str)

=back


=item  Options

=over

=item ipaexternalmember: Members of a trusted domain in DOM\name or name@domain form (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_group_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('group_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipaexternalmember all raw version no_members user group)],
        [qw(unicode:1 bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_group_del

Wrapper method for group_del API

Delete group.

=over

=item Required arguments

=over

=item cn: Group name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_group_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('group_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_group_detach

Wrapper method for group_detach API

Detach a managed group from a user.

=over

=item Required arguments

=over

=item cn: Group name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_group_detach
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('group_detach',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_group_find

Wrapper method for group_find API

Search for groups.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Group name (type unicode class Str)

=item description: Group description (type unicode class Str)

=item gidnumber: GID (use this option to set it manually) (type int class Int)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item private: search for private groups (type bool class Flag)

=item posix: search for POSIX groups (type bool class Flag)

=item external: search for groups with support of external non-IPA members from trusted domains (type bool class Flag)

=item nonposix: search for non-POSIX groups (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("group-name") (type bool class Flag)

=item user: Search for groups with these member users. (arrayref of type unicode class Str)

=item no_user: Search for groups without these member users. (arrayref of type unicode class Str)

=item group: Search for groups with these member groups. (arrayref of type unicode class Str)

=item no_group: Search for groups without these member groups. (arrayref of type unicode class Str)

=item in_group: Search for groups with these member of groups. (arrayref of type unicode class Str)

=item not_in_group: Search for groups without these member of groups. (arrayref of type unicode class Str)

=item in_netgroup: Search for groups with these member of netgroups. (arrayref of type unicode class Str)

=item not_in_netgroup: Search for groups without these member of netgroups. (arrayref of type unicode class Str)

=item in_role: Search for groups with these member of roles. (arrayref of type unicode class Str)

=item not_in_role: Search for groups without these member of roles. (arrayref of type unicode class Str)

=item in_hbacrule: Search for groups with these member of HBAC rules. (arrayref of type unicode class Str)

=item not_in_hbacrule: Search for groups without these member of HBAC rules. (arrayref of type unicode class Str)

=item in_sudorule: Search for groups with these member of sudo rules. (arrayref of type unicode class Str)

=item not_in_sudorule: Search for groups without these member of sudo rules. (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_group_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('group_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description gidnumber timelimit sizelimit private posix external nonposix all raw version no_members pkey_only user no_user group no_group in_group not_in_group in_netgroup not_in_netgroup in_role not_in_role in_hbacrule not_in_hbacrule in_sudorule not_in_sudorule)],
        [qw(unicode:0 unicode:0 int:0 int:0 int:0 bool:0 bool:0 bool:0 bool:0 bool:0 bool:0 unicode:0 bool:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_group_mod

Wrapper method for group_mod API

Modify a group.

=over

=item Required arguments

=over

=item cn: Group name (type unicode class Str)

=back


=item  Options

=over

=item description: Group description (type unicode class Str)

=item gidnumber: GID (use this option to set it manually) (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item posix: change to a POSIX group (type bool class Flag)

=item external: change to support external non-IPA members from trusted domains (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item rename: Rename the group object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_group_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('group_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description gidnumber setattr addattr delattr rights posix external all raw version no_members rename)],
        [qw(unicode:0 int:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 bool:0 bool:0 unicode:0 bool:0 unicode:0)],
    );
}



=item api_group_remove_member

Wrapper method for group_remove_member API

Remove members from a group.

=over

=item Required arguments

=over

=item cn: Group name (type unicode class Str)

=back


=item  Options

=over

=item ipaexternalmember: Members of a trusted domain in DOM\name or name@domain form (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_group_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('group_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipaexternalmember all raw version no_members user group)],
        [qw(unicode:1 bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_group_show

Wrapper method for group_show API

Display information about a named group.

=over

=item Required arguments

=over

=item cn: Group name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_group_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('group_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbacrule_add

Wrapper method for hbacrule_add API

Create a new HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item accessruletype: Rule type (allow) (type unicode class StrEnum)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item sourcehostcategory: <sourcehostcategory> (type object class DeprecatedParam)

=item servicecategory: Service category the rule applies to (type unicode class StrEnum)

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item sourcehost_host: <sourcehost_host> (type object class DeprecatedParam)

=item sourcehost_hostgroup: <sourcehost_hostgroup> (type object class DeprecatedParam)

=item externalhost: External host (arrayref of type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(accessruletype usercategory hostcategory sourcehostcategory servicecategory description ipaenabledflag sourcehost_host sourcehost_hostgroup externalhost setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 object:0 unicode:0 unicode:0 bool:0 object:0 object:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbacrule_add_host

Wrapper method for hbacrule_add_host API

Add target hosts and hostgroups to an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_add_host
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_add_host',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hbacrule_add_service

Wrapper method for hbacrule_add_service API

Add services to an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item hbacsvc: HBAC services to add (arrayref of type unicode class Str)

=item hbacsvcgroup: HBAC service groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_add_service
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_add_service',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members hbacsvc hbacsvcgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hbacrule_add_sourcehost

Wrapper method for hbacrule_add_sourcehost API

None

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_add_sourcehost
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_add_sourcehost',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hbacrule_add_user

Wrapper method for hbacrule_add_user API

Add users and groups to an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_add_user
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_add_user',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hbacrule_del

Wrapper method for hbacrule_del API

Delete an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_hbacrule_disable

Wrapper method for hbacrule_disable API

Disable an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_disable
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_disable',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_hbacrule_enable

Wrapper method for hbacrule_enable API

Enable an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_enable
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_enable',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_hbacrule_find

Wrapper method for hbacrule_find API

Search for HBAC rules.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Rule name (type unicode class Str)

=item accessruletype: Rule type (allow) (type unicode class StrEnum)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item sourcehostcategory: <sourcehostcategory> (type object class DeprecatedParam)

=item servicecategory: Service category the rule applies to (type unicode class StrEnum)

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item sourcehost_host: <sourcehost_host> (type object class DeprecatedParam)

=item sourcehost_hostgroup: <sourcehost_hostgroup> (type object class DeprecatedParam)

=item externalhost: External host (arrayref of type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('hbacrule_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn accessruletype usercategory hostcategory sourcehostcategory servicecategory description ipaenabledflag sourcehost_host sourcehost_hostgroup externalhost timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 object:0 unicode:0 unicode:0 bool:0 object:0 object:0 unicode:1 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_hbacrule_mod

Wrapper method for hbacrule_mod API

Modify an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item accessruletype: Rule type (allow) (type unicode class StrEnum)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item sourcehostcategory: <sourcehostcategory> (type object class DeprecatedParam)

=item servicecategory: Service category the rule applies to (type unicode class StrEnum)

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item sourcehost_host: <sourcehost_host> (type object class DeprecatedParam)

=item sourcehost_hostgroup: <sourcehost_hostgroup> (type object class DeprecatedParam)

=item externalhost: External host (arrayref of type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(accessruletype usercategory hostcategory sourcehostcategory servicecategory description ipaenabledflag sourcehost_host sourcehost_hostgroup externalhost setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 object:0 unicode:0 unicode:0 bool:0 object:0 object:0 unicode:1 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbacrule_remove_host

Wrapper method for hbacrule_remove_host API

Remove target hosts and hostgroups from an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_remove_host
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_remove_host',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hbacrule_remove_service

Wrapper method for hbacrule_remove_service API

Remove service and service groups from an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item hbacsvc: HBAC services to remove (arrayref of type unicode class Str)

=item hbacsvcgroup: HBAC service groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_remove_service
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_remove_service',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members hbacsvc hbacsvcgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hbacrule_remove_sourcehost

Wrapper method for hbacrule_remove_sourcehost API

None

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_remove_sourcehost
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_remove_sourcehost',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hbacrule_remove_user

Wrapper method for hbacrule_remove_user API

Remove users and groups from an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_remove_user
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_remove_user',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hbacrule_show

Wrapper method for hbacrule_show API

Display the properties of an HBAC rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacrule_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacrule_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbacsvc_add

Wrapper method for hbacsvc_add API

Add a new HBAC service.

=over

=item Required arguments

=over

=item cn: HBAC service (type unicode class Str)

=back


=item  Options

=over

=item description: HBAC service description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvc_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvc_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbacsvc_del

Wrapper method for hbacsvc_del API

Delete an existing HBAC service.

=over

=item Required arguments

=over

=item cn: HBAC service (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvc_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvc_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_hbacsvc_find

Wrapper method for hbacsvc_find API

Search for HBAC services.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: HBAC service (type unicode class Str)

=item description: HBAC service description (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("service") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvc_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('hbacsvc_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_hbacsvc_mod

Wrapper method for hbacsvc_mod API

Modify an HBAC service.

=over

=item Required arguments

=over

=item cn: HBAC service (type unicode class Str)

=back


=item  Options

=over

=item description: HBAC service description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvc_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvc_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbacsvc_show

Wrapper method for hbacsvc_show API

Display information about an HBAC service.

=over

=item Required arguments

=over

=item cn: HBAC service (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvc_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvc_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbacsvcgroup_add

Wrapper method for hbacsvcgroup_add API

Add a new HBAC service group.

=over

=item Required arguments

=over

=item cn: Service group name (type unicode class Str)

=back


=item  Options

=over

=item description: HBAC service group description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvcgroup_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvcgroup_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbacsvcgroup_add_member

Wrapper method for hbacsvcgroup_add_member API

Add members to an HBAC service group.

=over

=item Required arguments

=over

=item cn: Service group name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item hbacsvc: HBAC services to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvcgroup_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvcgroup_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members hbacsvc)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_hbacsvcgroup_del

Wrapper method for hbacsvcgroup_del API

Delete an HBAC service group.

=over

=item Required arguments

=over

=item cn: Service group name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvcgroup_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvcgroup_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_hbacsvcgroup_find

Wrapper method for hbacsvcgroup_find API

Search for an HBAC service group.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Service group name (type unicode class Str)

=item description: HBAC service group description (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvcgroup_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('hbacsvcgroup_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_hbacsvcgroup_mod

Wrapper method for hbacsvcgroup_mod API

Modify an HBAC service group.

=over

=item Required arguments

=over

=item cn: Service group name (type unicode class Str)

=back


=item  Options

=over

=item description: HBAC service group description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvcgroup_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvcgroup_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbacsvcgroup_remove_member

Wrapper method for hbacsvcgroup_remove_member API

Remove members from an HBAC service group.

=over

=item Required arguments

=over

=item cn: Service group name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item hbacsvc: HBAC services to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvcgroup_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvcgroup_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members hbacsvc)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_hbacsvcgroup_show

Wrapper method for hbacsvcgroup_show API

Display information about an HBAC service group.

=over

=item Required arguments

=over

=item cn: Service group name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbacsvcgroup_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hbacsvcgroup_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hbactest

Wrapper method for hbactest API

Simulate use of Host-based access controls

=over

=item No required arguments

=item  Options

=over

=item user: User name (type unicode class Str)

=item sourcehost: <sourcehost> (type object class DeprecatedParam)

=item targethost: Target host (type unicode class Str)

=item service: Service (type unicode class Str)

=item rules: Rules to test. If not specified, --enabled is assumed (arrayref of type unicode class Str)

=item nodetail: Hide details which rules are matched, not matched, or invalid (type bool class Flag)

=item enabled: Include all enabled IPA rules into test [default] (type bool class Flag)

=item disabled: Include all disabled IPA rules into test (type bool class Flag)

=item sizelimit: Maximum number of rules to process when no --rules is specified (type int class Int)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hbactest
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('hbactest',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(user sourcehost targethost service rules nodetail enabled disabled sizelimit version)],
        [qw(unicode:0 object:0 unicode:0 unicode:0 unicode:1 bool:0 bool:0 bool:0 int:0 unicode:0)],
    );
}



=item api_host_add

Wrapper method for host_add API

Add a new host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this host (type unicode class Str)

=item l: Host locality (e.g. "Baltimore, MD") (type unicode class Str)

=item nshostlocation: Host location (e.g. "Lab 2") (type unicode class Str)

=item nshardwareplatform: Host hardware platform (e.g. "Lenovo T61") (type unicode class Str)

=item nsosversion: Host operating system and version (e.g. "Fedora 9") (type unicode class Str)

=item userpassword: Password used in bulk enrollment (type unicode class Str)

=item random: Generate a random password to be used in bulk enrollment (type bool class Flag)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item macaddress: Hardware MAC address(es) on this host (arrayref of type unicode class Str)

=item ipasshpubkey: SSH public key (arrayref of type unicode class Str)

=item userclass: Host category (semantics placed on this attribute are for local interpretation) (arrayref of type unicode class Str)

=item ipaassignedidview: Assigned ID View (type unicode class Str)

=item ipakrbrequirespreauth: Pre-authentication is required for the service (type bool class Bool)

=item ipakrbokasdelegate: Client credentials may be delegated to the service (type bool class Bool)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item force: force host name even if not in DNS (type bool class Flag)

=item no_reverse: skip reverse DNS detection (type bool class Flag)

=item ip_address: Add the host to DNS with this IP address (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_add
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_add',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description l nshostlocation nshardwareplatform nsosversion userpassword random usercertificate macaddress ipasshpubkey userclass ipaassignedidview ipakrbrequirespreauth ipakrbokasdelegate setattr addattr force no_reverse ip_address all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 bool:0 str:1 unicode:1 unicode:1 unicode:1 unicode:0 bool:0 bool:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_host_add_cert

Wrapper method for host_add_cert API

Add certificates to host entry

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_add_cert
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_add_cert',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members usercertificate)],
        [qw(bool:0 bool:0 unicode:0 bool:0 str:1)],
    );
}



=item api_host_add_managedby

Wrapper method for host_add_managedby API

Add hosts that can manage this host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_add_managedby
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_add_managedby',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_host_allow_create_keytab

Wrapper method for host_allow_create_keytab API

Allow users, groups, hosts or host groups to create a keytab of this host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_allow_create_keytab
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_allow_create_keytab',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_host_allow_retrieve_keytab

Wrapper method for host_allow_retrieve_keytab API

Allow users, groups, hosts or host groups to retrieve a keytab of this host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_allow_retrieve_keytab
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_allow_retrieve_keytab',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_host_del

Wrapper method for host_del API

Delete a host.

=over

=item Required arguments

=over

=item fqdn: Host name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item updatedns: Remove entries from DNS (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_del
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_del',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue updatedns version)],
        [qw(bool:0 bool:0 unicode:0)],
    );
}



=item api_host_disable

Wrapper method for host_disable API

Disable the Kerberos key, SSL certificate and all services of a host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_disable
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_disable',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_host_disallow_create_keytab

Wrapper method for host_disallow_create_keytab API

Disallow users, groups, hosts or host groups to create a keytab of this host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_disallow_create_keytab
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_disallow_create_keytab',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_host_disallow_retrieve_keytab

Wrapper method for host_disallow_retrieve_keytab API

Disallow users, groups, hosts or host groups to retrieve a keytab of this host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_disallow_retrieve_keytab
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_disallow_retrieve_keytab',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_host_find

Wrapper method for host_find API

Search for hosts.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item fqdn: Host name (type unicode class Str)

=item description: A description of this host (type unicode class Str)

=item l: Host locality (e.g. "Baltimore, MD") (type unicode class Str)

=item nshostlocation: Host location (e.g. "Lab 2") (type unicode class Str)

=item nshardwareplatform: Host hardware platform (e.g. "Lenovo T61") (type unicode class Str)

=item nsosversion: Host operating system and version (e.g. "Fedora 9") (type unicode class Str)

=item userpassword: Password used in bulk enrollment (type unicode class Str)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item macaddress: Hardware MAC address(es) on this host (arrayref of type unicode class Str)

=item userclass: Host category (semantics placed on this attribute are for local interpretation) (arrayref of type unicode class Str)

=item ipaassignedidview: Assigned ID View (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("hostname") (type bool class Flag)

=item in_hostgroup: Search for hosts with these member of host groups. (arrayref of type unicode class Str)

=item not_in_hostgroup: Search for hosts without these member of host groups. (arrayref of type unicode class Str)

=item in_netgroup: Search for hosts with these member of netgroups. (arrayref of type unicode class Str)

=item not_in_netgroup: Search for hosts without these member of netgroups. (arrayref of type unicode class Str)

=item in_role: Search for hosts with these member of roles. (arrayref of type unicode class Str)

=item not_in_role: Search for hosts without these member of roles. (arrayref of type unicode class Str)

=item in_hbacrule: Search for hosts with these member of HBAC rules. (arrayref of type unicode class Str)

=item not_in_hbacrule: Search for hosts without these member of HBAC rules. (arrayref of type unicode class Str)

=item in_sudorule: Search for hosts with these member of sudo rules. (arrayref of type unicode class Str)

=item not_in_sudorule: Search for hosts without these member of sudo rules. (arrayref of type unicode class Str)

=item enroll_by_user: Search for hosts with these enrolled by users. (arrayref of type unicode class Str)

=item not_enroll_by_user: Search for hosts without these enrolled by users. (arrayref of type unicode class Str)

=item man_by_host: Search for hosts with these managed by hosts. (arrayref of type unicode class Str)

=item not_man_by_host: Search for hosts without these managed by hosts. (arrayref of type unicode class Str)

=item man_host: Search for hosts with these managing hosts. (arrayref of type unicode class Str)

=item not_man_host: Search for hosts without these managing hosts. (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('host_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(fqdn description l nshostlocation nshardwareplatform nsosversion userpassword usercertificate macaddress userclass ipaassignedidview timelimit sizelimit all raw version no_members pkey_only in_hostgroup not_in_hostgroup in_netgroup not_in_netgroup in_role not_in_role in_hbacrule not_in_hbacrule in_sudorule not_in_sudorule enroll_by_user not_enroll_by_user man_by_host not_man_by_host man_host not_man_host)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 str:1 unicode:1 unicode:1 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_host_mod

Wrapper method for host_mod API

Modify information about a host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this host (type unicode class Str)

=item l: Host locality (e.g. "Baltimore, MD") (type unicode class Str)

=item nshostlocation: Host location (e.g. "Lab 2") (type unicode class Str)

=item nshardwareplatform: Host hardware platform (e.g. "Lenovo T61") (type unicode class Str)

=item nsosversion: Host operating system and version (e.g. "Fedora 9") (type unicode class Str)

=item userpassword: Password used in bulk enrollment (type unicode class Str)

=item random: Generate a random password to be used in bulk enrollment (type bool class Flag)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item macaddress: Hardware MAC address(es) on this host (arrayref of type unicode class Str)

=item ipasshpubkey: SSH public key (arrayref of type unicode class Str)

=item userclass: Host category (semantics placed on this attribute are for local interpretation) (arrayref of type unicode class Str)

=item ipaassignedidview: Assigned ID View (type unicode class Str)

=item ipakrbrequirespreauth: Pre-authentication is required for the service (type bool class Bool)

=item ipakrbokasdelegate: Client credentials may be delegated to the service (type bool class Bool)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item krbprincipalname: Kerberos principal name for this host (type unicode class Str)

=item updatedns: Update DNS entries (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_mod
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_mod',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description l nshostlocation nshardwareplatform nsosversion userpassword random usercertificate macaddress ipasshpubkey userclass ipaassignedidview ipakrbrequirespreauth ipakrbokasdelegate setattr addattr delattr rights krbprincipalname updatedns all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 bool:0 str:1 unicode:1 unicode:1 unicode:1 unicode:0 bool:0 bool:0 unicode:1 unicode:1 unicode:1 bool:0 unicode:0 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_host_remove_cert

Wrapper method for host_remove_cert API

Remove certificates from host entry

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_remove_cert
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_remove_cert',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members usercertificate)],
        [qw(bool:0 bool:0 unicode:0 bool:0 str:1)],
    );
}



=item api_host_remove_managedby

Wrapper method for host_remove_managedby API

Remove hosts that can manage this host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_remove_managedby
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_remove_managedby',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_host_show

Wrapper method for host_show API

Display information about a host.

=over

=item Required arguments

=over

=item fqdn: Host name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item out: file to store certificate in (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_host_show
{    
    my ($self, $fqdn, %opts) = @_;
    
    return $self->rpc_api('host_show',    
        [$fqdn],
        [qw(fqdn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights out all raw version no_members)],
        [qw(bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hostgroup_add

Wrapper method for hostgroup_add API

Add a new hostgroup.

=over

=item Required arguments

=over

=item cn: Name of host-group (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this host-group (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hostgroup_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hostgroup_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hostgroup_add_member

Wrapper method for hostgroup_add_member API

Add members to a hostgroup.

=over

=item Required arguments

=over

=item cn: Name of host-group (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hostgroup_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hostgroup_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hostgroup_del

Wrapper method for hostgroup_del API

Delete a hostgroup.

=over

=item Required arguments

=over

=item cn: Name of host-group (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hostgroup_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hostgroup_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_hostgroup_find

Wrapper method for hostgroup_find API

Search for hostgroups.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Name of host-group (type unicode class Str)

=item description: A description of this host-group (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("hostgroup-name") (type bool class Flag)

=item host: Search for host groups with these member hosts. (arrayref of type unicode class Str)

=item no_host: Search for host groups without these member hosts. (arrayref of type unicode class Str)

=item hostgroup: Search for host groups with these member host groups. (arrayref of type unicode class Str)

=item no_hostgroup: Search for host groups without these member host groups. (arrayref of type unicode class Str)

=item in_hostgroup: Search for host groups with these member of host groups. (arrayref of type unicode class Str)

=item not_in_hostgroup: Search for host groups without these member of host groups. (arrayref of type unicode class Str)

=item in_netgroup: Search for host groups with these member of netgroups. (arrayref of type unicode class Str)

=item not_in_netgroup: Search for host groups without these member of netgroups. (arrayref of type unicode class Str)

=item in_hbacrule: Search for host groups with these member of HBAC rules. (arrayref of type unicode class Str)

=item not_in_hbacrule: Search for host groups without these member of HBAC rules. (arrayref of type unicode class Str)

=item in_sudorule: Search for host groups with these member of sudo rules. (arrayref of type unicode class Str)

=item not_in_sudorule: Search for host groups without these member of sudo rules. (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hostgroup_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('hostgroup_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description timelimit sizelimit all raw version no_members pkey_only host no_host hostgroup no_hostgroup in_hostgroup not_in_hostgroup in_netgroup not_in_netgroup in_hbacrule not_in_hbacrule in_sudorule not_in_sudorule)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_hostgroup_mod

Wrapper method for hostgroup_mod API

Modify a hostgroup.

=over

=item Required arguments

=over

=item cn: Name of host-group (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this host-group (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hostgroup_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hostgroup_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_hostgroup_remove_member

Wrapper method for hostgroup_remove_member API

Remove members from a hostgroup.

=over

=item Required arguments

=over

=item cn: Name of host-group (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hostgroup_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hostgroup_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_hostgroup_show

Wrapper method for hostgroup_show API

Display information about a hostgroup.

=over

=item Required arguments

=over

=item cn: Name of host-group (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_hostgroup_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('hostgroup_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_i18n_messages

Wrapper method for i18n_messages API

None

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_i18n_messages
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('i18n_messages',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_idoverridegroup_add

Wrapper method for idoverridegroup_add API

Add a new Group ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item ipaanchoruuid: Anchor to override (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item cn: Group name (type unicode class Str)

=item gidnumber: Group ID Number (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverridegroup_add
{    
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;
    
    return $self->rpc_api('idoverridegroup_add',    
        [$idviewcn, $ipaanchoruuid],
        [qw(idviewcn ipaanchoruuid)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(description cn gidnumber setattr addattr fallback_to_ldap all raw version)],
        [qw(unicode:0 unicode:0 int:0 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_idoverridegroup_del

Wrapper method for idoverridegroup_del API

Delete an Group ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item ipaanchoruuid: Anchor to override (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverridegroup_del
{    
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;
    
    return $self->rpc_api('idoverridegroup_del',    
        [$idviewcn, $ipaanchoruuid],
        [qw(idviewcn ipaanchoruuid)],
        [qw(unicode:0 unicode:1)],
        \%opts,
        [qw(continue fallback_to_ldap version)],
        [qw(bool:0 bool:0 unicode:0)],
    );
}



=item api_idoverridegroup_find

Wrapper method for idoverridegroup_find API

Search for an Group ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item ipaanchoruuid: Anchor to override (type unicode class Str)

=item description: Description (type unicode class Str)

=item cn: Group name (type unicode class Str)

=item gidnumber: Group ID Number (type int class Int)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("anchor") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverridegroup_find
{    
    my ($self, $idviewcn, $criteria, %opts) = @_;
    
    return $self->rpc_api('idoverridegroup_find',    
        [$idviewcn, $criteria],
        [qw(idviewcn criteria)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(ipaanchoruuid description cn gidnumber timelimit sizelimit fallback_to_ldap all raw version pkey_only)],
        [qw(unicode:0 unicode:0 unicode:0 int:0 int:0 int:0 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_idoverridegroup_mod

Wrapper method for idoverridegroup_mod API

Modify an Group ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item ipaanchoruuid: Anchor to override (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item cn: Group name (type unicode class Str)

=item gidnumber: Group ID Number (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item rename: Rename the Group ID override object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverridegroup_mod
{    
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;
    
    return $self->rpc_api('idoverridegroup_mod',    
        [$idviewcn, $ipaanchoruuid],
        [qw(idviewcn ipaanchoruuid)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(description cn gidnumber setattr addattr delattr rights fallback_to_ldap all raw version rename)],
        [qw(unicode:0 unicode:0 int:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 bool:0 unicode:0 unicode:0)],
    );
}



=item api_idoverridegroup_show

Wrapper method for idoverridegroup_show API

Display information about an Group ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item ipaanchoruuid: Anchor to override (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverridegroup_show
{    
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;
    
    return $self->rpc_api('idoverridegroup_show',    
        [$idviewcn, $ipaanchoruuid],
        [qw(idviewcn ipaanchoruuid)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(rights fallback_to_ldap all raw version)],
        [qw(bool:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_idoverrideuser_add

Wrapper method for idoverrideuser_add API

Add a new User ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item ipaanchoruuid: Anchor to override (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item uid: User login (type unicode class Str)

=item uidnumber: User ID Number (type int class Int)

=item gecos: GECOS (type unicode class Str)

=item gidnumber: Group ID Number (type int class Int)

=item homedirectory: Home directory (type unicode class Str)

=item loginshell: Login shell (type unicode class Str)

=item ipaoriginaluid: <ipaoriginaluid> (type unicode class Str)

=item ipasshpubkey: SSH public key (arrayref of type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverrideuser_add
{    
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;
    
    return $self->rpc_api('idoverrideuser_add',    
        [$idviewcn, $ipaanchoruuid],
        [qw(idviewcn ipaanchoruuid)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(description uid uidnumber gecos gidnumber homedirectory loginshell ipaoriginaluid ipasshpubkey setattr addattr fallback_to_ldap all raw version)],
        [qw(unicode:0 unicode:0 int:0 unicode:0 int:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_idoverrideuser_del

Wrapper method for idoverrideuser_del API

Delete an User ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item ipaanchoruuid: Anchor to override (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverrideuser_del
{    
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;
    
    return $self->rpc_api('idoverrideuser_del',    
        [$idviewcn, $ipaanchoruuid],
        [qw(idviewcn ipaanchoruuid)],
        [qw(unicode:0 unicode:1)],
        \%opts,
        [qw(continue fallback_to_ldap version)],
        [qw(bool:0 bool:0 unicode:0)],
    );
}



=item api_idoverrideuser_find

Wrapper method for idoverrideuser_find API

Search for an User ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item ipaanchoruuid: Anchor to override (type unicode class Str)

=item description: Description (type unicode class Str)

=item uid: User login (type unicode class Str)

=item uidnumber: User ID Number (type int class Int)

=item gecos: GECOS (type unicode class Str)

=item gidnumber: Group ID Number (type int class Int)

=item homedirectory: Home directory (type unicode class Str)

=item loginshell: Login shell (type unicode class Str)

=item ipaoriginaluid: <ipaoriginaluid> (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("anchor") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverrideuser_find
{    
    my ($self, $idviewcn, $criteria, %opts) = @_;
    
    return $self->rpc_api('idoverrideuser_find',    
        [$idviewcn, $criteria],
        [qw(idviewcn criteria)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(ipaanchoruuid description uid uidnumber gecos gidnumber homedirectory loginshell ipaoriginaluid timelimit sizelimit fallback_to_ldap all raw version pkey_only)],
        [qw(unicode:0 unicode:0 unicode:0 int:0 unicode:0 int:0 unicode:0 unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_idoverrideuser_mod

Wrapper method for idoverrideuser_mod API

Modify an User ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item ipaanchoruuid: Anchor to override (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item uid: User login (type unicode class Str)

=item uidnumber: User ID Number (type int class Int)

=item gecos: GECOS (type unicode class Str)

=item gidnumber: Group ID Number (type int class Int)

=item homedirectory: Home directory (type unicode class Str)

=item loginshell: Login shell (type unicode class Str)

=item ipaoriginaluid: <ipaoriginaluid> (type unicode class Str)

=item ipasshpubkey: SSH public key (arrayref of type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item rename: Rename the User ID override object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverrideuser_mod
{    
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;
    
    return $self->rpc_api('idoverrideuser_mod',    
        [$idviewcn, $ipaanchoruuid],
        [qw(idviewcn ipaanchoruuid)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(description uid uidnumber gecos gidnumber homedirectory loginshell ipaoriginaluid ipasshpubkey setattr addattr delattr rights fallback_to_ldap all raw version rename)],
        [qw(unicode:0 unicode:0 int:0 unicode:0 int:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 bool:0 unicode:0 unicode:0)],
    );
}



=item api_idoverrideuser_show

Wrapper method for idoverrideuser_show API

Display information about an User ID override.

=over

=item Required arguments

=over

=item idviewcn: ID View Name (type unicode class Str)

=item ipaanchoruuid: Anchor to override (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item fallback_to_ldap: Allow falling back to AD DC LDAP when resolving AD trusted objects. For two-way trusts only. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idoverrideuser_show
{    
    my ($self, $idviewcn, $ipaanchoruuid, %opts) = @_;
    
    return $self->rpc_api('idoverrideuser_show',    
        [$idviewcn, $ipaanchoruuid],
        [qw(idviewcn ipaanchoruuid)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(rights fallback_to_ldap all raw version)],
        [qw(bool:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_idrange_add

Wrapper method for idrange_add API


    Add new ID range.

    To add a new ID range you always have to specify

        --base-id
        --range-size

    Additionally

        --rid-base
        --secondary-rid-base

    may be given for a new ID range for the local domain while

        --rid-base
        --dom-sid

    must be given to add a new range for a trusted AD domain.

=======
WARNING:

DNA plugin in 389-ds will allocate IDs based on the ranges configured for the
local domain. Currently the DNA plugin *cannot* be reconfigured itself based
on the local ranges set via this family of commands.

Manual configuration change has to be done in the DNA plugin configuration for
the new local range. Specifically, The dnaNextRange attribute of 'cn=Posix
IDs,cn=Distributed Numeric Assignment Plugin,cn=plugins,cn=config' has to be
modified to match the new range.
=======



=over

=item Required arguments

=over

=item cn: Range name (type unicode class Str)

=back


=item  Options

=over

=item ipabaseid: First Posix ID of the range (type int class Int)

=item ipaidrangesize: Number of IDs in the range (type int class Int)

=item ipabaserid: First RID of the corresponding RID range (type int class Int)

=item ipasecondarybaserid: First RID of the secondary RID range (type int class Int)

=item ipanttrusteddomainsid: Domain SID of the trusted domain (type unicode class Str)

=item ipanttrusteddomainname: Name of the trusted domain (type unicode class Str)

=item iparangetype: ID range type, one of ipa-ad-trust-posix, ipa-ad-trust, ipa-local (type unicode class StrEnum)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idrange_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('idrange_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipabaseid ipaidrangesize ipabaserid ipasecondarybaserid ipanttrusteddomainsid ipanttrusteddomainname iparangetype setattr addattr all raw version)],
        [qw(int:0 int:0 int:0 int:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_idrange_del

Wrapper method for idrange_del API

Delete an ID range.

=over

=item Required arguments

=over

=item cn: Range name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idrange_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('idrange_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_idrange_find

Wrapper method for idrange_find API

Search for ranges.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Range name (type unicode class Str)

=item ipabaseid: First Posix ID of the range (type int class Int)

=item ipaidrangesize: Number of IDs in the range (type int class Int)

=item ipabaserid: First RID of the corresponding RID range (type int class Int)

=item ipasecondarybaserid: First RID of the secondary RID range (type int class Int)

=item ipanttrusteddomainsid: Domain SID of the trusted domain (type unicode class Str)

=item iparangetype: ID range type, one of ipa-ad-trust-posix, ipa-ad-trust, ipa-local (type unicode class StrEnum)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idrange_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('idrange_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn ipabaseid ipaidrangesize ipabaserid ipasecondarybaserid ipanttrusteddomainsid iparangetype timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 int:0 int:0 int:0 int:0 unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_idrange_mod

Wrapper method for idrange_mod API

Modify ID range.

=======
WARNING:

DNA plugin in 389-ds will allocate IDs based on the ranges configured for the
local domain. Currently the DNA plugin *cannot* be reconfigured itself based
on the local ranges set via this family of commands.

Manual configuration change has to be done in the DNA plugin configuration for
the new local range. Specifically, The dnaNextRange attribute of 'cn=Posix
IDs,cn=Distributed Numeric Assignment Plugin,cn=plugins,cn=config' has to be
modified to match the new range.
=======



=over

=item Required arguments

=over

=item cn: Range name (type unicode class Str)

=back


=item  Options

=over

=item ipabaseid: First Posix ID of the range (type int class Int)

=item ipaidrangesize: Number of IDs in the range (type int class Int)

=item ipabaserid: First RID of the corresponding RID range (type int class Int)

=item ipasecondarybaserid: First RID of the secondary RID range (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item ipanttrusteddomainsid: <ipanttrusteddomainsid> (type object class DeprecatedParam)

=item ipanttrusteddomainname: <ipanttrusteddomainname> (type object class DeprecatedParam)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idrange_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('idrange_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipabaseid ipaidrangesize ipabaserid ipasecondarybaserid setattr addattr delattr rights ipanttrusteddomainsid ipanttrusteddomainname all raw version)],
        [qw(int:0 int:0 int:0 int:0 unicode:1 unicode:1 unicode:1 bool:0 object:0 object:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_idrange_show

Wrapper method for idrange_show API

Display information about a range.

=over

=item Required arguments

=over

=item cn: Range name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idrange_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('idrange_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_idview_add

Wrapper method for idview_add API

Add a new ID View.

=over

=item Required arguments

=over

=item cn: ID View Name (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idview_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('idview_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_idview_apply

Wrapper method for idview_apply API

Applies ID View to specified hosts or current members of specified hostgroups. If any other ID View is applied to the host, it is overriden.

=over

=item Required arguments

=over

=item cn: ID View Name (type unicode class Str)

=back


=item  Options

=over

=item host: Hosts to apply the ID View to (arrayref of type unicode class Str)

=item hostgroup: Hostgroups to whose hosts apply the ID View to. Please note that view is not applied automatically to any hosts added to the hostgroup after running the idview-apply command. (arrayref of type unicode class Str)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idview_apply
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('idview_apply',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(host hostgroup version)],
        [qw(unicode:1 unicode:1 unicode:0)],
    );
}



=item api_idview_del

Wrapper method for idview_del API

Delete an ID View.

=over

=item Required arguments

=over

=item cn: ID View Name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idview_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('idview_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_idview_find

Wrapper method for idview_find API

Search for an ID View.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: ID View Name (type unicode class Str)

=item description: Description (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idview_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('idview_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_idview_mod

Wrapper method for idview_mod API

Modify an ID View.

=over

=item Required arguments

=over

=item cn: ID View Name (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item rename: Rename the ID View object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idview_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('idview_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights all raw version rename)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 unicode:0)],
    );
}



=item api_idview_show

Wrapper method for idview_show API

Display information about an ID View.

=over

=item Required arguments

=over

=item cn: ID View Name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item show_hosts: Enumerate all the hosts the view applies to. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idview_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('idview_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights show_hosts all raw version)],
        [qw(bool:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_idview_unapply

Wrapper method for idview_unapply API

Clears ID View from specified hosts or current members of specified hostgroups.

=over

=item No required arguments

=item  Options

=over

=item host: Hosts to clear (any) ID View from. (arrayref of type unicode class Str)

=item hostgroup: Hostgroups whose hosts should have ID Views cleared. Note that view is not cleared automatically from any host added to the hostgroup after running idview-unapply command. (arrayref of type unicode class Str)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_idview_unapply
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('idview_unapply',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(host hostgroup version)],
        [qw(unicode:1 unicode:1 unicode:0)],
    );
}



=item api_join

Wrapper method for join API

Join an IPA domain

=over

=item Required arguments

=over

=item cn: The hostname to register as (type unicode class Str)

=back


=item  Options

=over

=item realm: The IPA realm (type unicode class Str)

=item nshardwareplatform: Hardware platform of the host (e.g. Lenovo T61) (type unicode class Str)

=item nsosversion: Operating System and version of the host (e.g. Fedora 9) (type unicode class Str)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_join
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('join',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(realm nshardwareplatform nsosversion version)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0)],
    );
}



=item api_json_metadata

Wrapper method for json_metadata API


    Export plugin meta-data for the webUI.
    

=over

=item Required arguments

=over

=item objname: Name of object to export (type unicode class Str)

=item methodname: Name of method to export (type unicode class Str)

=back


=item  Options

=over

=item object: Name of object to export (type unicode class Str)

=item method: Name of method to export (type unicode class Str)

=item command: Name of command to export (type unicode class Str)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_json_metadata
{    
    my ($self, $objname, $methodname, %opts) = @_;
    
    return $self->rpc_api('json_metadata',    
        [$objname, $methodname],
        [qw(objname methodname)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(object method command version)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0)],
    );
}



=item api_kra_is_enabled

Wrapper method for kra_is_enabled API

None

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_kra_is_enabled
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('kra_is_enabled',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_krbtpolicy_mod

Wrapper method for krbtpolicy_mod API

Modify Kerberos ticket policy.

=over

=item Required arguments

=over

=item uid: Manage ticket policy for specific user (type unicode class Str)

=back


=item  Options

=over

=item krbmaxticketlife: Maximum ticket life (seconds) (type int class Int)

=item krbmaxrenewableage: Maximum renewable age (seconds) (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_krbtpolicy_mod
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('krbtpolicy_mod',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(krbmaxticketlife krbmaxrenewableage setattr addattr delattr rights all raw version)],
        [qw(int:0 int:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_krbtpolicy_reset

Wrapper method for krbtpolicy_reset API

Reset Kerberos ticket policy to the default values.

=over

=item Required arguments

=over

=item uid: Manage ticket policy for specific user (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_krbtpolicy_reset
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('krbtpolicy_reset',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version)],
        [qw(bool:0 bool:0 unicode:0)],
    );
}



=item api_krbtpolicy_show

Wrapper method for krbtpolicy_show API

Display the current Kerberos ticket policy.

=over

=item Required arguments

=over

=item uid: Manage ticket policy for specific user (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_krbtpolicy_show
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('krbtpolicy_show',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_migrate_ds

Wrapper method for migrate_ds API

Migrate users and groups from DS to IPA.

=over

=item Required arguments

=over

=item ldapuri: LDAP URI of DS server to migrate from (type unicode class Str)

=item bindpw: bind password (type unicode class Password)

=back


=item  Options

=over

=item binddn: Bind DN (type DN class DNParam)

=item usercontainer: DN of container for users in DS relative to base DN (type DN class DNParam)

=item groupcontainer: DN of container for groups in DS relative to base DN (type DN class DNParam)

=item userobjectclass: Objectclasses used to search for user entries in DS (arrayref of type unicode class Str)

=item groupobjectclass: Objectclasses used to search for group entries in DS (arrayref of type unicode class Str)

=item userignoreobjectclass: Objectclasses to be ignored for user entries in DS (arrayref of type unicode class Str)

=item userignoreattribute: Attributes to be ignored for user entries in DS (arrayref of type unicode class Str)

=item groupignoreobjectclass: Objectclasses to be ignored for group entries in DS (arrayref of type unicode class Str)

=item groupignoreattribute: Attributes to be ignored for group entries in DS (arrayref of type unicode class Str)

=item groupoverwritegid: When migrating a group already existing in IPA domain overwrite the group GID and report as success (type bool class Flag)

=item schema: The schema used on the LDAP server. Supported values are RFC2307 and RFC2307bis. The default is RFC2307bis (type unicode class StrEnum)

=item continue: Continuous operation mode. Errors are reported but the process continues (type bool class Flag)

=item basedn: Base DN on remote LDAP server (type DN class DNParam)

=item compat: Allows migration despite the usage of compat plugin (type bool class Flag)

=item cacertfile: Load CA certificate of LDAP server from FILE (type unicode class File)

=item use_def_group: Add migrated users without a group to a default group (default: true) (type bool class Bool)

=item scope: LDAP search scope for users and groups: base, onelevel, or subtree. Defaults to onelevel (type unicode class StrEnum)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item exclude_groups: groups to exclude from migration (arrayref of type unicode class Str)

=item exclude_users: users to exclude from migration (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_migrate_ds
{    
    my ($self, $ldapuri, $bindpw, %opts) = @_;
    
    return $self->rpc_api('migrate_ds',    
        [$ldapuri, $bindpw],
        [qw(ldapuri bindpw)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(binddn usercontainer groupcontainer userobjectclass groupobjectclass userignoreobjectclass userignoreattribute groupignoreobjectclass groupignoreattribute groupoverwritegid schema continue basedn compat cacertfile use_def_group scope version exclude_groups exclude_users)],
        [qw(DN:0 DN:0 DN:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 bool:0 unicode:0 bool:0 DN:0 bool:0 unicode:0 bool:0 unicode:0 unicode:0 unicode:1 unicode:1)],
    );
}



=item api_netgroup_add

Wrapper method for netgroup_add API

Add a new netgroup.

=over

=item Required arguments

=over

=item cn: Netgroup name (type unicode class Str)

=back


=item  Options

=over

=item description: Netgroup description (type unicode class Str)

=item nisdomainname: NIS domain name (type unicode class Str)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item externalhost: External host (arrayref of type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_netgroup_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('netgroup_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description nisdomainname usercategory hostcategory externalhost setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_netgroup_add_member

Wrapper method for netgroup_add_member API

Add members to a netgroup.

=over

=item Required arguments

=over

=item cn: Netgroup name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item netgroup: netgroups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_netgroup_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('netgroup_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup netgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_netgroup_del

Wrapper method for netgroup_del API

Delete a netgroup.

=over

=item Required arguments

=over

=item cn: Netgroup name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_netgroup_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('netgroup_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_netgroup_find

Wrapper method for netgroup_find API

Search for a netgroup.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Netgroup name (type unicode class Str)

=item description: Netgroup description (type unicode class Str)

=item nisdomainname: NIS domain name (type unicode class Str)

=item ipauniqueid: IPA unique ID (type unicode class Str)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item externalhost: External host (arrayref of type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item private: <private> (type bool class Flag)

=item managed: search for managed groups (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item netgroup: Search for netgroups with these member netgroups. (arrayref of type unicode class Str)

=item no_netgroup: Search for netgroups without these member netgroups. (arrayref of type unicode class Str)

=item user: Search for netgroups with these member users. (arrayref of type unicode class Str)

=item no_user: Search for netgroups without these member users. (arrayref of type unicode class Str)

=item group: Search for netgroups with these member groups. (arrayref of type unicode class Str)

=item no_group: Search for netgroups without these member groups. (arrayref of type unicode class Str)

=item host: Search for netgroups with these member hosts. (arrayref of type unicode class Str)

=item no_host: Search for netgroups without these member hosts. (arrayref of type unicode class Str)

=item hostgroup: Search for netgroups with these member host groups. (arrayref of type unicode class Str)

=item no_hostgroup: Search for netgroups without these member host groups. (arrayref of type unicode class Str)

=item in_netgroup: Search for netgroups with these member of netgroups. (arrayref of type unicode class Str)

=item not_in_netgroup: Search for netgroups without these member of netgroups. (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_netgroup_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('netgroup_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description nisdomainname ipauniqueid usercategory hostcategory externalhost timelimit sizelimit private managed all raw version no_members pkey_only netgroup no_netgroup user no_user group no_group host no_host hostgroup no_hostgroup in_netgroup not_in_netgroup)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 int:0 int:0 bool:0 bool:0 bool:0 bool:0 unicode:0 bool:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_netgroup_mod

Wrapper method for netgroup_mod API

Modify a netgroup.

=over

=item Required arguments

=over

=item cn: Netgroup name (type unicode class Str)

=back


=item  Options

=over

=item description: Netgroup description (type unicode class Str)

=item nisdomainname: NIS domain name (type unicode class Str)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item externalhost: External host (arrayref of type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_netgroup_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('netgroup_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description nisdomainname usercategory hostcategory externalhost setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_netgroup_remove_member

Wrapper method for netgroup_remove_member API

Remove members from a netgroup.

=over

=item Required arguments

=over

=item cn: Netgroup name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item netgroup: netgroups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_netgroup_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('netgroup_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup netgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_netgroup_show

Wrapper method for netgroup_show API

Display information about a netgroup.

=over

=item Required arguments

=over

=item cn: Netgroup name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_netgroup_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('netgroup_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_otpconfig_mod

Wrapper method for otpconfig_mod API

Modify OTP configuration options.

=over

=item No required arguments

=item  Options

=over

=item ipatokentotpauthwindow: TOTP authentication time variance (seconds) (type int class Int)

=item ipatokentotpsyncwindow: TOTP synchronization time variance (seconds) (type int class Int)

=item ipatokenhotpauthwindow: HOTP authentication skip-ahead (type int class Int)

=item ipatokenhotpsyncwindow: HOTP synchronization skip-ahead (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otpconfig_mod
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('otpconfig_mod',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(ipatokentotpauthwindow ipatokentotpsyncwindow ipatokenhotpauthwindow ipatokenhotpsyncwindow setattr addattr delattr rights all raw version)],
        [qw(int:0 int:0 int:0 int:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_otpconfig_show

Wrapper method for otpconfig_show API

Show the current OTP configuration.

=over

=item No required arguments

=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otpconfig_show
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('otpconfig_show',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_otptoken_add

Wrapper method for otptoken_add API

Add a new OTP token.

=over

=item Required arguments

=over

=item ipatokenuniqueid: Unique ID (type unicode class Str)

=back


=item  Options

=over

=item type: Type of the token (type unicode class StrEnum)

=item description: Token description (informational only) (type unicode class Str)

=item ipatokenowner: Assigned user of the token (default: self) (type unicode class Str)

=item ipatokendisabled: Mark the token as disabled (default: false) (type bool class Bool)

=item ipatokennotbefore: First date/time the token can be used (type datetime class DateTime)

=item ipatokennotafter: Last date/time the token can be used (type datetime class DateTime)

=item ipatokenvendor: Token vendor name (informational only) (type unicode class Str)

=item ipatokenmodel: Token model (informational only) (type unicode class Str)

=item ipatokenserial: Token serial (informational only) (type unicode class Str)

=item ipatokenotpkey: Token secret (Base32; default: random) (type str class OTPTokenKey)

=item ipatokenotpalgorithm: Token hash algorithm (type unicode class StrEnum)

=item ipatokenotpdigits: Number of digits each token code will have (type int class IntEnum)

=item ipatokentotpclockoffset: TOTP token / FreeIPA server time difference (type int class Int)

=item ipatokentotptimestep: Length of TOTP token code validity (type int class Int)

=item ipatokenhotpcounter: Initial counter for the HOTP token (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item qrcode: (deprecated) (type bool class Flag)

=item no_qrcode: Do not display QR code (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otptoken_add
{    
    my ($self, $ipatokenuniqueid, %opts) = @_;
    
    return $self->rpc_api('otptoken_add',    
        [$ipatokenuniqueid],
        [qw(ipatokenuniqueid)],
        [qw(unicode:0)],
        \%opts,
        [qw(type description ipatokenowner ipatokendisabled ipatokennotbefore ipatokennotafter ipatokenvendor ipatokenmodel ipatokenserial ipatokenotpkey ipatokenotpalgorithm ipatokenotpdigits ipatokentotpclockoffset ipatokentotptimestep ipatokenhotpcounter setattr addattr qrcode no_qrcode all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 bool:0 datetime:0 datetime:0 unicode:0 unicode:0 unicode:0 str:0 unicode:0 int:0 int:0 int:0 int:0 unicode:1 unicode:1 bool:0 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_otptoken_add_managedby

Wrapper method for otptoken_add_managedby API

Add users that can manage this token.

=over

=item Required arguments

=over

=item ipatokenuniqueid: Unique ID (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otptoken_add_managedby
{    
    my ($self, $ipatokenuniqueid, %opts) = @_;
    
    return $self->rpc_api('otptoken_add_managedby',    
        [$ipatokenuniqueid],
        [qw(ipatokenuniqueid)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_otptoken_add_yubikey

Wrapper method for otptoken_add_yubikey API

Add a new YubiKey OTP token.

=over

=item Required arguments

=over

=item ipatokenuniqueid: Unique ID (type unicode class Str)

=back


=item  Options

=over

=item slot: YubiKey slot (type int class IntEnum)

=item description: Token description (informational only) (type unicode class Str)

=item ipatokenowner: Assigned user of the token (default: self) (type unicode class Str)

=item ipatokendisabled: Mark the token as disabled (default: false) (type bool class Bool)

=item ipatokennotbefore: First date/time the token can be used (type datetime class DateTime)

=item ipatokennotafter: Last date/time the token can be used (type datetime class DateTime)

=item ipatokenotpdigits: Number of digits each token code will have (type int class IntEnum)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otptoken_add_yubikey
{    
    my ($self, $ipatokenuniqueid, %opts) = @_;
    
    return $self->rpc_api('otptoken_add_yubikey',    
        [$ipatokenuniqueid],
        [qw(ipatokenuniqueid)],
        [qw(unicode:0)],
        \%opts,
        [qw(slot description ipatokenowner ipatokendisabled ipatokennotbefore ipatokennotafter ipatokenotpdigits version)],
        [qw(int:0 unicode:0 unicode:0 bool:0 datetime:0 datetime:0 int:0 unicode:0)],
    );
}



=item api_otptoken_del

Wrapper method for otptoken_del API

Delete an OTP token.

=over

=item Required arguments

=over

=item ipatokenuniqueid: Unique ID (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otptoken_del
{    
    my ($self, $ipatokenuniqueid, %opts) = @_;
    
    return $self->rpc_api('otptoken_del',    
        [$ipatokenuniqueid],
        [qw(ipatokenuniqueid)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_otptoken_find

Wrapper method for otptoken_find API

Search for OTP token.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item ipatokenuniqueid: Unique ID (type unicode class Str)

=item type: Type of the token (type unicode class StrEnum)

=item description: Token description (informational only) (type unicode class Str)

=item ipatokenowner: Assigned user of the token (default: self) (type unicode class Str)

=item ipatokendisabled: Mark the token as disabled (default: false) (type bool class Bool)

=item ipatokennotbefore: First date/time the token can be used (type datetime class DateTime)

=item ipatokennotafter: Last date/time the token can be used (type datetime class DateTime)

=item ipatokenvendor: Token vendor name (informational only) (type unicode class Str)

=item ipatokenmodel: Token model (informational only) (type unicode class Str)

=item ipatokenserial: Token serial (informational only) (type unicode class Str)

=item ipatokenotpalgorithm: Token hash algorithm (type unicode class StrEnum)

=item ipatokenotpdigits: Number of digits each token code will have (type int class IntEnum)

=item ipatokentotpclockoffset: TOTP token / FreeIPA server time difference (type int class Int)

=item ipatokentotptimestep: Length of TOTP token code validity (type int class Int)

=item ipatokenhotpcounter: Initial counter for the HOTP token (type int class Int)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("id") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otptoken_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('otptoken_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipatokenuniqueid type description ipatokenowner ipatokendisabled ipatokennotbefore ipatokennotafter ipatokenvendor ipatokenmodel ipatokenserial ipatokenotpalgorithm ipatokenotpdigits ipatokentotpclockoffset ipatokentotptimestep ipatokenhotpcounter timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 bool:0 datetime:0 datetime:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 int:0 int:0 int:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_otptoken_mod

Wrapper method for otptoken_mod API

Modify a OTP token.

=over

=item Required arguments

=over

=item ipatokenuniqueid: Unique ID (type unicode class Str)

=back


=item  Options

=over

=item description: Token description (informational only) (type unicode class Str)

=item ipatokenowner: Assigned user of the token (default: self) (type unicode class Str)

=item ipatokendisabled: Mark the token as disabled (default: false) (type bool class Bool)

=item ipatokennotbefore: First date/time the token can be used (type datetime class DateTime)

=item ipatokennotafter: Last date/time the token can be used (type datetime class DateTime)

=item ipatokenvendor: Token vendor name (informational only) (type unicode class Str)

=item ipatokenmodel: Token model (informational only) (type unicode class Str)

=item ipatokenserial: Token serial (informational only) (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item rename: Rename the OTP token object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otptoken_mod
{    
    my ($self, $ipatokenuniqueid, %opts) = @_;
    
    return $self->rpc_api('otptoken_mod',    
        [$ipatokenuniqueid],
        [qw(ipatokenuniqueid)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipatokenowner ipatokendisabled ipatokennotbefore ipatokennotafter ipatokenvendor ipatokenmodel ipatokenserial setattr addattr delattr rights all raw version no_members rename)],
        [qw(unicode:0 unicode:0 bool:0 datetime:0 datetime:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0 unicode:0)],
    );
}



=item api_otptoken_remove_managedby

Wrapper method for otptoken_remove_managedby API

Remove hosts that can manage this host.

=over

=item Required arguments

=over

=item ipatokenuniqueid: Unique ID (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otptoken_remove_managedby
{    
    my ($self, $ipatokenuniqueid, %opts) = @_;
    
    return $self->rpc_api('otptoken_remove_managedby',    
        [$ipatokenuniqueid],
        [qw(ipatokenuniqueid)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_otptoken_show

Wrapper method for otptoken_show API

Display information about an OTP token.

=over

=item Required arguments

=over

=item ipatokenuniqueid: Unique ID (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otptoken_show
{    
    my ($self, $ipatokenuniqueid, %opts) = @_;
    
    return $self->rpc_api('otptoken_show',    
        [$ipatokenuniqueid],
        [qw(ipatokenuniqueid)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_otptoken_sync

Wrapper method for otptoken_sync API

Synchronize an OTP token.

=over

=item Required arguments

=over

=item token: Token ID (type unicode class Str)

=back


=item  Options

=over

=item user: User ID (type unicode class Str)

=item password: Password (type unicode class Password)

=item first_code: First Code (type unicode class Password)

=item second_code: Second Code (type unicode class Password)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_otptoken_sync
{    
    my ($self, $token, %opts) = @_;
    
    return $self->rpc_api('otptoken_sync',    
        [$token],
        [qw(token)],
        [qw(unicode:0)],
        \%opts,
        [qw(user password first_code second_code version)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0)],
    );
}



=item api_passwd

Wrapper method for passwd API

Set a user's password.

=over

=item Required arguments

=over

=item principal: User name (type unicode class Str)

=item password: New Password (type unicode class Password)

=item current_password: Current Password (type unicode class Password)

=back


=item  Options

=over

=item otp: One Time Password (type unicode class Password)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_passwd
{    
    my ($self, $principal, $password, $current_password, %opts) = @_;
    
    return $self->rpc_api('passwd',    
        [$principal, $password, $current_password],
        [qw(principal password current_password)],
        [qw(unicode:0 unicode:0 unicode:0)],
        \%opts,
        [qw(otp version)],
        [qw(unicode:0 unicode:0)],
    );
}



=item api_permission_add

Wrapper method for permission_add API

Add a new permission.

=over

=item Required arguments

=over

=item cn: Permission name (type unicode class Str)

=back


=item  Options

=over

=item ipapermright: Rights to grant (read, search, compare, write, add, delete, all) (arrayref of type unicode class StrEnum)

=item attrs: All attributes to which the permission applies (arrayref of type unicode class Str)

=item ipapermbindruletype: Bind rule type (type unicode class StrEnum)

=item ipapermlocation: Subtree to apply permissions to (type DN class DNOrURL)

=item extratargetfilter: Extra target filter (arrayref of type unicode class Str)

=item ipapermtargetfilter: All target filters, including those implied by type and memberof (arrayref of type unicode class Str)

=item ipapermtarget: Optional DN to apply the permission to (must be in the subtree, but may not yet exist) (type DN class DNParam)

=item ipapermtargetto: Optional DN subtree where an entry can be moved to (must be in the subtree, but may not yet exist) (type DN class DNParam)

=item ipapermtargetfrom: Optional DN subtree from where an entry can be moved (must be in the subtree, but may not yet exist) (type DN class DNParam)

=item memberof: Target members of a group (sets memberOf targetfilter) (arrayref of type unicode class Str)

=item targetgroup: User group to apply permissions to (sets target) (type unicode class Str)

=item type: Type of IPA object (sets subtree and objectClass targetfilter) (type unicode class Str)

=item filter: Deprecated; use extratargetfilter (arrayref of type unicode class Str)

=item subtree: Deprecated; use ipapermlocation (arrayref of type unicode class Str)

=item permissions: Deprecated; use ipapermright (arrayref of type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_permission_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('permission_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipapermright attrs ipapermbindruletype ipapermlocation extratargetfilter ipapermtargetfilter ipapermtarget ipapermtargetto ipapermtargetfrom memberof targetgroup type filter subtree permissions setattr addattr all raw version no_members)],
        [qw(unicode:1 unicode:1 unicode:0 DN:0 unicode:1 unicode:1 DN:0 DN:0 DN:0 unicode:1 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_permission_add_member

Wrapper method for permission_add_member API

Add members to a permission.

=over

=item Required arguments

=over

=item cn: Permission name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item privilege: privileges to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_permission_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('permission_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members privilege)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_permission_add_noaci

Wrapper method for permission_add_noaci API

Add a system permission without an ACI (internal command)

=over

=item Required arguments

=over

=item cn: Permission name (type unicode class Str)

=back


=item  Options

=over

=item ipapermissiontype: Permission flags (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_permission_add_noaci
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('permission_add_noaci',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipapermissiontype all raw version no_members)],
        [qw(unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_permission_del

Wrapper method for permission_del API

Delete a permission.

=over

=item Required arguments

=over

=item cn: Permission name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item force: force delete of SYSTEM permissions (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_permission_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('permission_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue force version)],
        [qw(bool:0 bool:0 unicode:0)],
    );
}



=item api_permission_find

Wrapper method for permission_find API

Search for permissions.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Permission name (type unicode class Str)

=item ipapermright: Rights to grant (read, search, compare, write, add, delete, all) (arrayref of type unicode class StrEnum)

=item attrs: All attributes to which the permission applies (arrayref of type unicode class Str)

=item ipapermincludedattr: User-specified attributes to which the permission applies (arrayref of type unicode class Str)

=item ipapermexcludedattr: User-specified attributes to which the permission explicitly does not apply (arrayref of type unicode class Str)

=item ipapermdefaultattr: Attributes to which the permission applies by default (arrayref of type unicode class Str)

=item ipapermbindruletype: Bind rule type (type unicode class StrEnum)

=item ipapermlocation: Subtree to apply permissions to (type DN class DNOrURL)

=item extratargetfilter: Extra target filter (arrayref of type unicode class Str)

=item ipapermtargetfilter: All target filters, including those implied by type and memberof (arrayref of type unicode class Str)

=item ipapermtarget: Optional DN to apply the permission to (must be in the subtree, but may not yet exist) (type DN class DNParam)

=item ipapermtargetto: Optional DN subtree where an entry can be moved to (must be in the subtree, but may not yet exist) (type DN class DNParam)

=item ipapermtargetfrom: Optional DN subtree from where an entry can be moved (must be in the subtree, but may not yet exist) (type DN class DNParam)

=item memberof: Target members of a group (sets memberOf targetfilter) (arrayref of type unicode class Str)

=item targetgroup: User group to apply permissions to (sets target) (type unicode class Str)

=item type: Type of IPA object (sets subtree and objectClass targetfilter) (type unicode class Str)

=item filter: Deprecated; use extratargetfilter (arrayref of type unicode class Str)

=item subtree: Deprecated; use ipapermlocation (arrayref of type unicode class Str)

=item permissions: Deprecated; use ipapermright (arrayref of type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_permission_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('permission_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn ipapermright attrs ipapermincludedattr ipapermexcludedattr ipapermdefaultattr ipapermbindruletype ipapermlocation extratargetfilter ipapermtargetfilter ipapermtarget ipapermtargetto ipapermtargetfrom memberof targetgroup type filter subtree permissions timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 DN:0 unicode:1 unicode:1 DN:0 DN:0 DN:0 unicode:1 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_permission_mod

Wrapper method for permission_mod API

Modify a permission.

=over

=item Required arguments

=over

=item cn: Permission name (type unicode class Str)

=back


=item  Options

=over

=item ipapermright: Rights to grant (read, search, compare, write, add, delete, all) (arrayref of type unicode class StrEnum)

=item attrs: All attributes to which the permission applies (arrayref of type unicode class Str)

=item ipapermincludedattr: User-specified attributes to which the permission applies (arrayref of type unicode class Str)

=item ipapermexcludedattr: User-specified attributes to which the permission explicitly does not apply (arrayref of type unicode class Str)

=item ipapermbindruletype: Bind rule type (type unicode class StrEnum)

=item ipapermlocation: Subtree to apply permissions to (type DN class DNOrURL)

=item extratargetfilter: Extra target filter (arrayref of type unicode class Str)

=item ipapermtargetfilter: All target filters, including those implied by type and memberof (arrayref of type unicode class Str)

=item ipapermtarget: Optional DN to apply the permission to (must be in the subtree, but may not yet exist) (type DN class DNParam)

=item ipapermtargetto: Optional DN subtree where an entry can be moved to (must be in the subtree, but may not yet exist) (type DN class DNParam)

=item ipapermtargetfrom: Optional DN subtree from where an entry can be moved (must be in the subtree, but may not yet exist) (type DN class DNParam)

=item memberof: Target members of a group (sets memberOf targetfilter) (arrayref of type unicode class Str)

=item targetgroup: User group to apply permissions to (sets target) (type unicode class Str)

=item type: Type of IPA object (sets subtree and objectClass targetfilter) (type unicode class Str)

=item filter: Deprecated; use extratargetfilter (arrayref of type unicode class Str)

=item subtree: Deprecated; use ipapermlocation (arrayref of type unicode class Str)

=item permissions: Deprecated; use ipapermright (arrayref of type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item rename: Rename the permission object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_permission_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('permission_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipapermright attrs ipapermincludedattr ipapermexcludedattr ipapermbindruletype ipapermlocation extratargetfilter ipapermtargetfilter ipapermtarget ipapermtargetto ipapermtargetfrom memberof targetgroup type filter subtree permissions setattr addattr delattr rights all raw version no_members rename)],
        [qw(unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 DN:0 unicode:1 unicode:1 DN:0 DN:0 DN:0 unicode:1 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0 unicode:0)],
    );
}



=item api_permission_remove_member

Wrapper method for permission_remove_member API

Remove members from a permission.

=over

=item Required arguments

=over

=item cn: Permission name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item privilege: privileges to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_permission_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('permission_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members privilege)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_permission_show

Wrapper method for permission_show API

Display information about a permission.

=over

=item Required arguments

=over

=item cn: Permission name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_permission_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('permission_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_ping

Wrapper method for ping API

Ping a remote server.

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_ping
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('ping',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_plugins

Wrapper method for plugins API

Show all loaded plugins.

=over

=item No required arguments

=item  Options

=over

=item server: Forward to server instead of running locally (type bool class Flag)

=item all: retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_plugins
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('plugins',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(server all version)],
        [qw(bool:0 bool:0 unicode:0)],
    );
}



=item api_privilege_add

Wrapper method for privilege_add API

Add a new privilege.

=over

=item Required arguments

=over

=item cn: Privilege name (type unicode class Str)

=back


=item  Options

=over

=item description: Privilege description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_privilege_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('privilege_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_privilege_add_member

Wrapper method for privilege_add_member API

Add members to a privilege.

=over

=item Required arguments

=over

=item cn: Privilege name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item role: roles to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_privilege_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('privilege_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members role)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_privilege_add_permission

Wrapper method for privilege_add_permission API

Add permissions to a privilege.

=over

=item Required arguments

=over

=item cn: Privilege name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item permission: permissions (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_privilege_add_permission
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('privilege_add_permission',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members permission)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_privilege_del

Wrapper method for privilege_del API

Delete a privilege.

=over

=item Required arguments

=over

=item cn: Privilege name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_privilege_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('privilege_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_privilege_find

Wrapper method for privilege_find API

Search for privileges.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Privilege name (type unicode class Str)

=item description: Privilege description (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_privilege_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('privilege_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_privilege_mod

Wrapper method for privilege_mod API

Modify a privilege.

=over

=item Required arguments

=over

=item cn: Privilege name (type unicode class Str)

=back


=item  Options

=over

=item description: Privilege description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item rename: Rename the privilege object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_privilege_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('privilege_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights all raw version no_members rename)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0 unicode:0)],
    );
}



=item api_privilege_remove_member

Wrapper method for privilege_remove_member API


    Remove members from a privilege
    

=over

=item Required arguments

=over

=item cn: Privilege name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item role: roles to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_privilege_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('privilege_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members role)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_privilege_remove_permission

Wrapper method for privilege_remove_permission API

Remove permissions from a privilege.

=over

=item Required arguments

=over

=item cn: Privilege name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item permission: permissions (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_privilege_remove_permission
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('privilege_remove_permission',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members permission)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_privilege_show

Wrapper method for privilege_show API

Display information about a privilege.

=over

=item Required arguments

=over

=item cn: Privilege name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_privilege_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('privilege_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_pwpolicy_add

Wrapper method for pwpolicy_add API

Add a new group password policy.

=over

=item Required arguments

=over

=item cn: Manage password policy for specific group (type unicode class Str)

=back


=item  Options

=over

=item krbmaxpwdlife: Maximum password lifetime (in days) (type int class Int)

=item krbminpwdlife: Minimum password lifetime (in hours) (type int class Int)

=item krbpwdhistorylength: Password history size (type int class Int)

=item krbpwdmindiffchars: Minimum number of character classes (type int class Int)

=item krbpwdminlength: Minimum length of password (type int class Int)

=item cospriority: Priority of the policy (higher number means lower priority (type int class Int)

=item krbpwdmaxfailure: Consecutive failures before lockout (type int class Int)

=item krbpwdfailurecountinterval: Period after which failure count will be reset (seconds) (type int class Int)

=item krbpwdlockoutduration: Period for which lockout is enforced (seconds) (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_pwpolicy_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('pwpolicy_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(krbmaxpwdlife krbminpwdlife krbpwdhistorylength krbpwdmindiffchars krbpwdminlength cospriority krbpwdmaxfailure krbpwdfailurecountinterval krbpwdlockoutduration setattr addattr all raw version)],
        [qw(int:0 int:0 int:0 int:0 int:0 int:0 int:0 int:0 int:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_pwpolicy_del

Wrapper method for pwpolicy_del API

Delete a group password policy.

=over

=item Required arguments

=over

=item cn: Manage password policy for specific group (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_pwpolicy_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('pwpolicy_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_pwpolicy_find

Wrapper method for pwpolicy_find API

Search for group password policies.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Manage password policy for specific group (type unicode class Str)

=item krbmaxpwdlife: Maximum password lifetime (in days) (type int class Int)

=item krbminpwdlife: Minimum password lifetime (in hours) (type int class Int)

=item krbpwdhistorylength: Password history size (type int class Int)

=item krbpwdmindiffchars: Minimum number of character classes (type int class Int)

=item krbpwdminlength: Minimum length of password (type int class Int)

=item cospriority: Priority of the policy (higher number means lower priority (type int class Int)

=item krbpwdmaxfailure: Consecutive failures before lockout (type int class Int)

=item krbpwdfailurecountinterval: Period after which failure count will be reset (seconds) (type int class Int)

=item krbpwdlockoutduration: Period for which lockout is enforced (seconds) (type int class Int)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("group") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_pwpolicy_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('pwpolicy_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn krbmaxpwdlife krbminpwdlife krbpwdhistorylength krbpwdmindiffchars krbpwdminlength cospriority krbpwdmaxfailure krbpwdfailurecountinterval krbpwdlockoutduration timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 int:0 int:0 int:0 int:0 int:0 int:0 int:0 int:0 int:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_pwpolicy_mod

Wrapper method for pwpolicy_mod API

Modify a group password policy.

=over

=item Required arguments

=over

=item cn: Manage password policy for specific group (type unicode class Str)

=back


=item  Options

=over

=item krbmaxpwdlife: Maximum password lifetime (in days) (type int class Int)

=item krbminpwdlife: Minimum password lifetime (in hours) (type int class Int)

=item krbpwdhistorylength: Password history size (type int class Int)

=item krbpwdmindiffchars: Minimum number of character classes (type int class Int)

=item krbpwdminlength: Minimum length of password (type int class Int)

=item cospriority: Priority of the policy (higher number means lower priority (type int class Int)

=item krbpwdmaxfailure: Consecutive failures before lockout (type int class Int)

=item krbpwdfailurecountinterval: Period after which failure count will be reset (seconds) (type int class Int)

=item krbpwdlockoutduration: Period for which lockout is enforced (seconds) (type int class Int)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_pwpolicy_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('pwpolicy_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(krbmaxpwdlife krbminpwdlife krbpwdhistorylength krbpwdmindiffchars krbpwdminlength cospriority krbpwdmaxfailure krbpwdfailurecountinterval krbpwdlockoutduration setattr addattr delattr rights all raw version)],
        [qw(int:0 int:0 int:0 int:0 int:0 int:0 int:0 int:0 int:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_pwpolicy_show

Wrapper method for pwpolicy_show API

Display information about password policy.

=over

=item Required arguments

=over

=item cn: Manage password policy for specific group (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item user: Display effective policy for a specific user (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_pwpolicy_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('pwpolicy_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights user all raw version)],
        [qw(bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_radiusproxy_add

Wrapper method for radiusproxy_add API

Add a new RADIUS proxy server.

=over

=item Required arguments

=over

=item cn: RADIUS proxy server name (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this RADIUS proxy server (type unicode class Str)

=item ipatokenradiusserver: The hostname or IP (with or without port) (arrayref of type unicode class Str)

=item ipatokenradiussecret: The secret used to encrypt data (type unicode class Password)

=item ipatokenradiustimeout: The total timeout across all retries (in seconds) (type int class Int)

=item ipatokenradiusretries: The number of times to retry authentication (type int class Int)

=item ipatokenusermapattribute: The username attribute on the user object (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_radiusproxy_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('radiusproxy_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipatokenradiusserver ipatokenradiussecret ipatokenradiustimeout ipatokenradiusretries ipatokenusermapattribute setattr addattr all raw version)],
        [qw(unicode:0 unicode:1 unicode:0 int:0 int:0 unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_radiusproxy_del

Wrapper method for radiusproxy_del API

Delete a RADIUS proxy server.

=over

=item Required arguments

=over

=item cn: RADIUS proxy server name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_radiusproxy_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('radiusproxy_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_radiusproxy_find

Wrapper method for radiusproxy_find API

Search for RADIUS proxy servers.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: RADIUS proxy server name (type unicode class Str)

=item description: A description of this RADIUS proxy server (type unicode class Str)

=item ipatokenradiusserver: The hostname or IP (with or without port) (arrayref of type unicode class Str)

=item ipatokenradiussecret: The secret used to encrypt data (type unicode class Password)

=item ipatokenradiustimeout: The total timeout across all retries (in seconds) (type int class Int)

=item ipatokenradiusretries: The number of times to retry authentication (type int class Int)

=item ipatokenusermapattribute: The username attribute on the user object (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_radiusproxy_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('radiusproxy_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description ipatokenradiusserver ipatokenradiussecret ipatokenradiustimeout ipatokenradiusretries ipatokenusermapattribute timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 unicode:0 unicode:1 unicode:0 int:0 int:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_radiusproxy_mod

Wrapper method for radiusproxy_mod API

Modify a RADIUS proxy server.

=over

=item Required arguments

=over

=item cn: RADIUS proxy server name (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this RADIUS proxy server (type unicode class Str)

=item ipatokenradiusserver: The hostname or IP (with or without port) (arrayref of type unicode class Str)

=item ipatokenradiussecret: The secret used to encrypt data (type unicode class Password)

=item ipatokenradiustimeout: The total timeout across all retries (in seconds) (type int class Int)

=item ipatokenradiusretries: The number of times to retry authentication (type int class Int)

=item ipatokenusermapattribute: The username attribute on the user object (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item rename: Rename the RADIUS proxy server object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_radiusproxy_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('radiusproxy_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipatokenradiusserver ipatokenradiussecret ipatokenradiustimeout ipatokenradiusretries ipatokenusermapattribute setattr addattr delattr rights all raw version rename)],
        [qw(unicode:0 unicode:1 unicode:0 int:0 int:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 unicode:0)],
    );
}



=item api_radiusproxy_show

Wrapper method for radiusproxy_show API

Display information about a RADIUS proxy server.

=over

=item Required arguments

=over

=item cn: RADIUS proxy server name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_radiusproxy_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('radiusproxy_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_realmdomains_mod

Wrapper method for realmdomains_mod API

Modify realm domains.

=over

=item No required arguments

=item  Options

=over

=item associateddomain: Domain (arrayref of type unicode class Str)

=item add_domain: Add domain (type unicode class Str)

=item del_domain: Delete domain (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item force: Force adding domain even if not in DNS (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_realmdomains_mod
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('realmdomains_mod',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(associateddomain add_domain del_domain setattr addattr delattr rights force all raw version)],
        [qw(unicode:1 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_realmdomains_show

Wrapper method for realmdomains_show API

Display the list of realm domains.

=over

=item No required arguments

=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_realmdomains_show
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('realmdomains_show',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_role_add

Wrapper method for role_add API

Add a new role.

=over

=item Required arguments

=over

=item cn: Role name (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this role-group (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_role_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('role_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_role_add_member

Wrapper method for role_add_member API

Add members to a role.

=over

=item Required arguments

=over

=item cn: Role name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item service: services to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_role_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('role_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup service)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_role_add_privilege

Wrapper method for role_add_privilege API

Add privileges to a role.

=over

=item Required arguments

=over

=item cn: Role name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item privilege: privileges (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_role_add_privilege
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('role_add_privilege',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members privilege)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_role_del

Wrapper method for role_del API

Delete a role.

=over

=item Required arguments

=over

=item cn: Role name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_role_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('role_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_role_find

Wrapper method for role_find API

Search for roles.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Role name (type unicode class Str)

=item description: A description of this role-group (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_role_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('role_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_role_mod

Wrapper method for role_mod API

Modify a role.

=over

=item Required arguments

=over

=item cn: Role name (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this role-group (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item rename: Rename the role object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_role_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('role_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights all raw version no_members rename)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0 unicode:0)],
    );
}



=item api_role_remove_member

Wrapper method for role_remove_member API

Remove members from a role.

=over

=item Required arguments

=over

=item cn: Role name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item service: services to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_role_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('role_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup service)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_role_remove_privilege

Wrapper method for role_remove_privilege API

Remove privileges from a role.

=over

=item Required arguments

=over

=item cn: Role name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item privilege: privileges (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_role_remove_privilege
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('role_remove_privilege',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members privilege)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_role_show

Wrapper method for role_show API

Display information about a role.

=over

=item Required arguments

=over

=item cn: Role name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_role_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('role_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_selfservice_add

Wrapper method for selfservice_add API

Add a new self-service permission.

=over

=item Required arguments

=over

=item aciname: Self-service name (type unicode class Str)

=back


=item  Options

=over

=item permissions: Permissions to grant (read, write). Default is write. (arrayref of type unicode class Str)

=item attrs: Attributes to which the permission applies. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selfservice_add
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('selfservice_add',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(permissions attrs all raw version)],
        [qw(unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_selfservice_del

Wrapper method for selfservice_del API

Delete a self-service permission.

=over

=item Required arguments

=over

=item aciname: Self-service name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selfservice_del
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('selfservice_del',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_selfservice_find

Wrapper method for selfservice_find API

Search for a self-service permission.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item aciname: Self-service name (type unicode class Str)

=item permissions: Permissions to grant (read, write). Default is write. (arrayref of type unicode class Str)

=item attrs: Attributes to which the permission applies. (arrayref of type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selfservice_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('selfservice_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(aciname permissions attrs pkey_only all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_selfservice_mod

Wrapper method for selfservice_mod API

Modify a self-service permission.

=over

=item Required arguments

=over

=item aciname: Self-service name (type unicode class Str)

=back


=item  Options

=over

=item permissions: Permissions to grant (read, write). Default is write. (arrayref of type unicode class Str)

=item attrs: Attributes to which the permission applies. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selfservice_mod
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('selfservice_mod',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(permissions attrs all raw version)],
        [qw(unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_selfservice_show

Wrapper method for selfservice_show API

Display information about a self-service permission.

=over

=item Required arguments

=over

=item aciname: Self-service name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selfservice_show
{    
    my ($self, $aciname, %opts) = @_;
    
    return $self->rpc_api('selfservice_show',    
        [$aciname],
        [qw(aciname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version)],
        [qw(bool:0 bool:0 unicode:0)],
    );
}



=item api_selinuxusermap_add

Wrapper method for selinuxusermap_add API

Create a new SELinux User Map.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item ipaselinuxuser: SELinux User (type unicode class Str)

=item seealso: HBAC Rule that defines the users, groups and hostgroups (type unicode class Str)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipaselinuxuser seealso usercategory hostcategory description ipaenabledflag setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 bool:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_selinuxusermap_add_host

Wrapper method for selinuxusermap_add_host API

Add target hosts and hostgroups to an SELinux User Map rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_add_host
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_add_host',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_selinuxusermap_add_user

Wrapper method for selinuxusermap_add_user API

Add users and groups to an SELinux User Map rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_add_user
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_add_user',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_selinuxusermap_del

Wrapper method for selinuxusermap_del API

Delete a SELinux User Map.

=over

=item Required arguments

=over

=item cn: Rule name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_selinuxusermap_disable

Wrapper method for selinuxusermap_disable API

Disable an SELinux User Map rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_disable
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_disable',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_selinuxusermap_enable

Wrapper method for selinuxusermap_enable API

Enable an SELinux User Map rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_enable
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_enable',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_selinuxusermap_find

Wrapper method for selinuxusermap_find API

Search for SELinux User Maps.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Rule name (type unicode class Str)

=item ipaselinuxuser: SELinux User (type unicode class Str)

=item seealso: HBAC Rule that defines the users, groups and hostgroups (type unicode class Str)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn ipaselinuxuser seealso usercategory hostcategory description ipaenabledflag timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 bool:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_selinuxusermap_mod

Wrapper method for selinuxusermap_mod API

Modify a SELinux User Map.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item ipaselinuxuser: SELinux User (type unicode class Str)

=item seealso: HBAC Rule that defines the users, groups and hostgroups (type unicode class Str)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipaselinuxuser seealso usercategory hostcategory description ipaenabledflag setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_selinuxusermap_remove_host

Wrapper method for selinuxusermap_remove_host API

Remove target hosts and hostgroups from an SELinux User Map rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_remove_host
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_remove_host',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_selinuxusermap_remove_user

Wrapper method for selinuxusermap_remove_user API

Remove users and groups from an SELinux User Map rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_remove_user
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_remove_user',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_selinuxusermap_show

Wrapper method for selinuxusermap_show API

Display the properties of a SELinux User Map rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_selinuxusermap_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('selinuxusermap_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_server_del

Wrapper method for server_del API

Delete IPA server.

=over

=item Required arguments

=over

=item cn: IPA server hostname (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_server_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('server_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_server_find

Wrapper method for server_find API

Search for IPA servers.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: IPA server hostname (type unicode class Str)

=item iparepltopomanagedsuffix: Managed suffix (type unicode class Str)

=item ipamindomainlevel: Minimum domain level (type int class Int)

=item ipamaxdomainlevel: Maximum domain level (type int class Int)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_server_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('server_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn iparepltopomanagedsuffix ipamindomainlevel ipamaxdomainlevel timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_server_show

Wrapper method for server_show API

Show IPA server.

=over

=item Required arguments

=over

=item cn: IPA server hostname (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_server_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('server_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_service_add

Wrapper method for service_add API

Add a new IPA new service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item ipakrbauthzdata: Override default list of supported PAC types. Use 'NONE' to disable PAC support for this service, e.g. this might be necessary for NFS services. (arrayref of type unicode class StrEnum)

=item ipakrbrequirespreauth: Pre-authentication is required for the service (type bool class Bool)

=item ipakrbokasdelegate: Client credentials may be delegated to the service (type bool class Bool)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item force: force principal name even if not in DNS (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_add
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_add',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(usercertificate ipakrbauthzdata ipakrbrequirespreauth ipakrbokasdelegate setattr addattr force all raw version no_members)],
        [qw(str:1 unicode:1 bool:0 bool:0 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_service_add_cert

Wrapper method for service_add_cert API

Add new certificates to a service

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_add_cert
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_add_cert',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members usercertificate)],
        [qw(bool:0 bool:0 unicode:0 bool:0 str:1)],
    );
}



=item api_service_add_host

Wrapper method for service_add_host API

Add hosts that can manage this service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_add_host
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_add_host',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_service_allow_create_keytab

Wrapper method for service_allow_create_keytab API

Allow users, groups, hosts or host groups to create a keytab of this service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_allow_create_keytab
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_allow_create_keytab',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_service_allow_retrieve_keytab

Wrapper method for service_allow_retrieve_keytab API

Allow users, groups, hosts or host groups to retrieve a keytab of this service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_allow_retrieve_keytab
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_allow_retrieve_keytab',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_service_del

Wrapper method for service_del API

Delete an IPA service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_del
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_del',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_service_disable

Wrapper method for service_disable API

Disable the Kerberos key and SSL certificate of a service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_disable
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_disable',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_service_disallow_create_keytab

Wrapper method for service_disallow_create_keytab API

Disallow users, groups, hosts or host groups to create a keytab of this service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_disallow_create_keytab
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_disallow_create_keytab',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_service_disallow_retrieve_keytab

Wrapper method for service_disallow_retrieve_keytab API

Disallow users, groups, hosts or host groups to retrieve a keytab of this service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_disallow_retrieve_keytab
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_disallow_retrieve_keytab',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group host hostgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_service_find

Wrapper method for service_find API

Search for IPA services.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item krbprincipalname: Service principal (type unicode class Str)

=item ipakrbauthzdata: Override default list of supported PAC types. Use 'NONE' to disable PAC support for this service, e.g. this might be necessary for NFS services. (arrayref of type unicode class StrEnum)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("principal") (type bool class Flag)

=item man_by_host: Search for services with these managed by hosts. (arrayref of type unicode class Str)

=item not_man_by_host: Search for services without these managed by hosts. (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('service_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(krbprincipalname ipakrbauthzdata timelimit sizelimit all raw version no_members pkey_only man_by_host not_man_by_host)],
        [qw(unicode:0 unicode:1 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_service_mod

Wrapper method for service_mod API

Modify an existing IPA service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item ipakrbauthzdata: Override default list of supported PAC types. Use 'NONE' to disable PAC support for this service, e.g. this might be necessary for NFS services. (arrayref of type unicode class StrEnum)

=item ipakrbrequirespreauth: Pre-authentication is required for the service (type bool class Bool)

=item ipakrbokasdelegate: Client credentials may be delegated to the service (type bool class Bool)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_mod
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_mod',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(usercertificate ipakrbauthzdata ipakrbrequirespreauth ipakrbokasdelegate setattr addattr delattr rights all raw version no_members)],
        [qw(str:1 unicode:1 bool:0 bool:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_service_remove_cert

Wrapper method for service_remove_cert API

Remove certificates from a service

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_remove_cert
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_remove_cert',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members usercertificate)],
        [qw(bool:0 bool:0 unicode:0 bool:0 str:1)],
    );
}



=item api_service_remove_host

Wrapper method for service_remove_host API

Remove hosts that can manage this service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_remove_host
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_remove_host',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_service_show

Wrapper method for service_show API

Display information about an IPA service.

=over

=item Required arguments

=over

=item krbprincipalname: Service principal (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item out: file to store certificate in (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_service_show
{    
    my ($self, $krbprincipalname, %opts) = @_;
    
    return $self->rpc_api('service_show',    
        [$krbprincipalname],
        [qw(krbprincipalname)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights out all raw version no_members)],
        [qw(bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_servicedelegationrule_add

Wrapper method for servicedelegationrule_add API

Create a new service delegation rule.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationrule_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationrule_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(setattr addattr all raw version no_members)],
        [qw(unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_servicedelegationrule_add_member

Wrapper method for servicedelegationrule_add_member API

Add member to a named service delegation rule.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item principal: principal to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationrule_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationrule_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members principal)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_servicedelegationrule_add_target

Wrapper method for servicedelegationrule_add_target API

Add target to a named service delegation rule.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item servicedelegationtarget: service delegation targets to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationrule_add_target
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationrule_add_target',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members servicedelegationtarget)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_servicedelegationrule_del

Wrapper method for servicedelegationrule_del API

Delete service delegation.

=over

=item Required arguments

=over

=item cn: Delegation name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationrule_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationrule_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_servicedelegationrule_find

Wrapper method for servicedelegationrule_find API

Search for service delegations rule.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Delegation name (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("delegation-name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationrule_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('servicedelegationrule_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_servicedelegationrule_remove_member

Wrapper method for servicedelegationrule_remove_member API

Remove member from a named service delegation rule.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item principal: principal to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationrule_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationrule_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members principal)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_servicedelegationrule_remove_target

Wrapper method for servicedelegationrule_remove_target API

Remove target from a named service delegation rule.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item servicedelegationtarget: service delegation targets to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationrule_remove_target
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationrule_remove_target',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members servicedelegationtarget)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_servicedelegationrule_show

Wrapper method for servicedelegationrule_show API

Display information about a named service delegation rule.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationrule_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationrule_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_servicedelegationtarget_add

Wrapper method for servicedelegationtarget_add API

Create a new service delegation target.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationtarget_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationtarget_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(setattr addattr all raw version)],
        [qw(unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_servicedelegationtarget_add_member

Wrapper method for servicedelegationtarget_add_member API

Add member to a named service delegation target.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item principal: principal to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationtarget_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationtarget_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version principal)],
        [qw(bool:0 bool:0 unicode:0 unicode:1)],
    );
}



=item api_servicedelegationtarget_del

Wrapper method for servicedelegationtarget_del API

Delete service delegation target.

=over

=item Required arguments

=over

=item cn: Delegation name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationtarget_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationtarget_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_servicedelegationtarget_find

Wrapper method for servicedelegationtarget_find API

Search for service delegation target.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Delegation name (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("delegation-name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationtarget_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('servicedelegationtarget_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_servicedelegationtarget_remove_member

Wrapper method for servicedelegationtarget_remove_member API

Remove member from a named service delegation target.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item principal: principal to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationtarget_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationtarget_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version principal)],
        [qw(bool:0 bool:0 unicode:0 unicode:1)],
    );
}



=item api_servicedelegationtarget_show

Wrapper method for servicedelegationtarget_show API

Display information about a named service delegation target.

=over

=item Required arguments

=over

=item cn: Delegation name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_servicedelegationtarget_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('servicedelegationtarget_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_session_logout

Wrapper method for session_logout API


    RPC command used to log the current user out of their session.
    

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_session_logout
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('session_logout',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_sidgen_was_run

Wrapper method for sidgen_was_run API

Determine whether ipa-adtrust-install has been run with sidgen task

=over

=item No required arguments

=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sidgen_was_run
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('sidgen_was_run',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_stageuser_activate

Wrapper method for stageuser_activate API

Activate a stage user.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_stageuser_activate
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('stageuser_activate',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members)],
        [qw(bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_stageuser_add

Wrapper method for stageuser_add API

Add a new stage user.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item givenname: First name (type unicode class Str)

=item sn: Last name (type unicode class Str)

=item cn: Full name (type unicode class Str)

=item displayname: Display name (type unicode class Str)

=item initials: Initials (type unicode class Str)

=item homedirectory: Home directory (type unicode class Str)

=item gecos: GECOS (type unicode class Str)

=item loginshell: Login shell (type unicode class Str)

=item krbprincipalname: Kerberos principal (type unicode class Str)

=item krbprincipalexpiration: Kerberos principal expiration (type datetime class DateTime)

=item mail: Email address (arrayref of type unicode class Str)

=item userpassword: Prompt to set the user password (type unicode class Password)

=item random: Generate a random user password (type bool class Flag)

=item uidnumber: User ID Number (system will assign one if not provided) (type int class Int)

=item gidnumber: Group ID Number (type int class Int)

=item street: Street address (type unicode class Str)

=item l: City (type unicode class Str)

=item st: State/Province (type unicode class Str)

=item postalcode: ZIP (type unicode class Str)

=item telephonenumber: Telephone Number (arrayref of type unicode class Str)

=item mobile: Mobile Telephone Number (arrayref of type unicode class Str)

=item pager: Pager Number (arrayref of type unicode class Str)

=item facsimiletelephonenumber: Fax Number (arrayref of type unicode class Str)

=item ou: Org. Unit (type unicode class Str)

=item title: Job Title (type unicode class Str)

=item manager: Manager (type unicode class Str)

=item carlicense: Car License (arrayref of type unicode class Str)

=item ipasshpubkey: SSH public key (arrayref of type unicode class Str)

=item ipauserauthtype: Types of supported user authentication (arrayref of type unicode class StrEnum)

=item userclass: User category (semantics placed on this attribute are for local interpretation) (arrayref of type unicode class Str)

=item ipatokenradiusconfiglink: RADIUS proxy configuration (type unicode class Str)

=item ipatokenradiususername: RADIUS proxy username (type unicode class Str)

=item departmentnumber: Department Number (arrayref of type unicode class Str)

=item employeenumber: Employee Number (type unicode class Str)

=item employeetype: Employee Type (type unicode class Str)

=item preferredlanguage: Preferred Language (type unicode class Str)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item from_delete: Create Stage user in from a delete user (type object class DeprecatedParam)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_stageuser_add
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('stageuser_add',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(givenname sn cn displayname initials homedirectory gecos loginshell krbprincipalname krbprincipalexpiration mail userpassword random uidnumber gidnumber street l st postalcode telephonenumber mobile pager facsimiletelephonenumber ou title manager carlicense ipasshpubkey ipauserauthtype userclass ipatokenradiusconfiglink ipatokenradiususername departmentnumber employeenumber employeetype preferredlanguage usercertificate setattr addattr from_delete all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 datetime:0 unicode:1 unicode:0 bool:0 int:0 int:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:1 unicode:0 unicode:0 unicode:0 str:1 unicode:1 unicode:1 object:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_stageuser_del

Wrapper method for stageuser_del API

Delete a stage user.

=over

=item Required arguments

=over

=item uid: User login (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_stageuser_del
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('stageuser_del',    
        [$uid],
        [qw(uid)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_stageuser_find

Wrapper method for stageuser_find API

Search for stage users.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item uid: User login (type unicode class Str)

=item givenname: First name (type unicode class Str)

=item sn: Last name (type unicode class Str)

=item cn: Full name (type unicode class Str)

=item displayname: Display name (type unicode class Str)

=item initials: Initials (type unicode class Str)

=item homedirectory: Home directory (type unicode class Str)

=item gecos: GECOS (type unicode class Str)

=item loginshell: Login shell (type unicode class Str)

=item krbprincipalname: Kerberos principal (type unicode class Str)

=item krbprincipalexpiration: Kerberos principal expiration (type datetime class DateTime)

=item mail: Email address (arrayref of type unicode class Str)

=item userpassword: Prompt to set the user password (type unicode class Password)

=item uidnumber: User ID Number (system will assign one if not provided) (type int class Int)

=item gidnumber: Group ID Number (type int class Int)

=item street: Street address (type unicode class Str)

=item l: City (type unicode class Str)

=item st: State/Province (type unicode class Str)

=item postalcode: ZIP (type unicode class Str)

=item telephonenumber: Telephone Number (arrayref of type unicode class Str)

=item mobile: Mobile Telephone Number (arrayref of type unicode class Str)

=item pager: Pager Number (arrayref of type unicode class Str)

=item facsimiletelephonenumber: Fax Number (arrayref of type unicode class Str)

=item ou: Org. Unit (type unicode class Str)

=item title: Job Title (type unicode class Str)

=item manager: Manager (type unicode class Str)

=item carlicense: Car License (arrayref of type unicode class Str)

=item ipauserauthtype: Types of supported user authentication (arrayref of type unicode class StrEnum)

=item userclass: User category (semantics placed on this attribute are for local interpretation) (arrayref of type unicode class Str)

=item ipatokenradiusconfiglink: RADIUS proxy configuration (type unicode class Str)

=item ipatokenradiususername: RADIUS proxy username (type unicode class Str)

=item departmentnumber: Department Number (arrayref of type unicode class Str)

=item employeenumber: Employee Number (type unicode class Str)

=item employeetype: Employee Type (type unicode class Str)

=item preferredlanguage: Preferred Language (type unicode class Str)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("login") (type bool class Flag)

=item in_group: Search for stage users with these member of groups. (arrayref of type unicode class Str)

=item not_in_group: Search for stage users without these member of groups. (arrayref of type unicode class Str)

=item in_netgroup: Search for stage users with these member of netgroups. (arrayref of type unicode class Str)

=item not_in_netgroup: Search for stage users without these member of netgroups. (arrayref of type unicode class Str)

=item in_role: Search for stage users with these member of roles. (arrayref of type unicode class Str)

=item not_in_role: Search for stage users without these member of roles. (arrayref of type unicode class Str)

=item in_hbacrule: Search for stage users with these member of HBAC rules. (arrayref of type unicode class Str)

=item not_in_hbacrule: Search for stage users without these member of HBAC rules. (arrayref of type unicode class Str)

=item in_sudorule: Search for stage users with these member of sudo rules. (arrayref of type unicode class Str)

=item not_in_sudorule: Search for stage users without these member of sudo rules. (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_stageuser_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('stageuser_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(uid givenname sn cn displayname initials homedirectory gecos loginshell krbprincipalname krbprincipalexpiration mail userpassword uidnumber gidnumber street l st postalcode telephonenumber mobile pager facsimiletelephonenumber ou title manager carlicense ipauserauthtype userclass ipatokenradiusconfiglink ipatokenradiususername departmentnumber employeenumber employeetype preferredlanguage usercertificate timelimit sizelimit all raw version no_members pkey_only in_group not_in_group in_netgroup not_in_netgroup in_role not_in_role in_hbacrule not_in_hbacrule in_sudorule not_in_sudorule)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 datetime:0 unicode:1 unicode:0 int:0 int:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:1 unicode:0 unicode:0 unicode:0 str:1 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_stageuser_mod

Wrapper method for stageuser_mod API

Modify a stage user.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item givenname: First name (type unicode class Str)

=item sn: Last name (type unicode class Str)

=item cn: Full name (type unicode class Str)

=item displayname: Display name (type unicode class Str)

=item initials: Initials (type unicode class Str)

=item homedirectory: Home directory (type unicode class Str)

=item gecos: GECOS (type unicode class Str)

=item loginshell: Login shell (type unicode class Str)

=item krbprincipalexpiration: Kerberos principal expiration (type datetime class DateTime)

=item mail: Email address (arrayref of type unicode class Str)

=item userpassword: Prompt to set the user password (type unicode class Password)

=item random: Generate a random user password (type bool class Flag)

=item uidnumber: User ID Number (system will assign one if not provided) (type int class Int)

=item gidnumber: Group ID Number (type int class Int)

=item street: Street address (type unicode class Str)

=item l: City (type unicode class Str)

=item st: State/Province (type unicode class Str)

=item postalcode: ZIP (type unicode class Str)

=item telephonenumber: Telephone Number (arrayref of type unicode class Str)

=item mobile: Mobile Telephone Number (arrayref of type unicode class Str)

=item pager: Pager Number (arrayref of type unicode class Str)

=item facsimiletelephonenumber: Fax Number (arrayref of type unicode class Str)

=item ou: Org. Unit (type unicode class Str)

=item title: Job Title (type unicode class Str)

=item manager: Manager (type unicode class Str)

=item carlicense: Car License (arrayref of type unicode class Str)

=item ipasshpubkey: SSH public key (arrayref of type unicode class Str)

=item ipauserauthtype: Types of supported user authentication (arrayref of type unicode class StrEnum)

=item userclass: User category (semantics placed on this attribute are for local interpretation) (arrayref of type unicode class Str)

=item ipatokenradiusconfiglink: RADIUS proxy configuration (type unicode class Str)

=item ipatokenradiususername: RADIUS proxy username (type unicode class Str)

=item departmentnumber: Department Number (arrayref of type unicode class Str)

=item employeenumber: Employee Number (type unicode class Str)

=item employeetype: Employee Type (type unicode class Str)

=item preferredlanguage: Preferred Language (type unicode class Str)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item rename: Rename the stage user object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_stageuser_mod
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('stageuser_mod',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(givenname sn cn displayname initials homedirectory gecos loginshell krbprincipalexpiration mail userpassword random uidnumber gidnumber street l st postalcode telephonenumber mobile pager facsimiletelephonenumber ou title manager carlicense ipasshpubkey ipauserauthtype userclass ipatokenradiusconfiglink ipatokenradiususername departmentnumber employeenumber employeetype preferredlanguage usercertificate setattr addattr delattr rights all raw version no_members rename)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 datetime:0 unicode:1 unicode:0 bool:0 int:0 int:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:1 unicode:0 unicode:0 unicode:0 str:1 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0 unicode:0)],
    );
}



=item api_stageuser_show

Wrapper method for stageuser_show API

Display information about a stage user.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_stageuser_show
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('stageuser_show',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudocmd_add

Wrapper method for sudocmd_add API

Create new Sudo Command.

=over

=item Required arguments

=over

=item sudocmd: Sudo Command (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this command (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmd_add
{    
    my ($self, $sudocmd, %opts) = @_;
    
    return $self->rpc_api('sudocmd_add',    
        [$sudocmd],
        [qw(sudocmd)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudocmd_del

Wrapper method for sudocmd_del API

Delete Sudo Command.

=over

=item Required arguments

=over

=item sudocmd: Sudo Command (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmd_del
{    
    my ($self, $sudocmd, %opts) = @_;
    
    return $self->rpc_api('sudocmd_del',    
        [$sudocmd],
        [qw(sudocmd)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_sudocmd_find

Wrapper method for sudocmd_find API

Search for Sudo Commands.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item sudocmd: Sudo Command (type unicode class Str)

=item description: A description of this command (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("command") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmd_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('sudocmd_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(sudocmd description timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_sudocmd_mod

Wrapper method for sudocmd_mod API

Modify Sudo Command.

=over

=item Required arguments

=over

=item sudocmd: Sudo Command (type unicode class Str)

=back


=item  Options

=over

=item description: A description of this command (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmd_mod
{    
    my ($self, $sudocmd, %opts) = @_;
    
    return $self->rpc_api('sudocmd_mod',    
        [$sudocmd],
        [qw(sudocmd)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudocmd_show

Wrapper method for sudocmd_show API

Display Sudo Command.

=over

=item Required arguments

=over

=item sudocmd: Sudo Command (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmd_show
{    
    my ($self, $sudocmd, %opts) = @_;
    
    return $self->rpc_api('sudocmd_show',    
        [$sudocmd],
        [qw(sudocmd)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudocmdgroup_add

Wrapper method for sudocmdgroup_add API

Create new Sudo Command Group.

=over

=item Required arguments

=over

=item cn: Sudo Command Group (type unicode class Str)

=back


=item  Options

=over

=item description: Group description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmdgroup_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudocmdgroup_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudocmdgroup_add_member

Wrapper method for sudocmdgroup_add_member API

Add members to Sudo Command Group.

=over

=item Required arguments

=over

=item cn: Sudo Command Group (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item sudocmd: sudo commands to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmdgroup_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudocmdgroup_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members sudocmd)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_sudocmdgroup_del

Wrapper method for sudocmdgroup_del API

Delete Sudo Command Group.

=over

=item Required arguments

=over

=item cn: Sudo Command Group (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmdgroup_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudocmdgroup_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_sudocmdgroup_find

Wrapper method for sudocmdgroup_find API

Search for Sudo Command Groups.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Sudo Command Group (type unicode class Str)

=item description: Group description (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("sudocmdgroup-name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmdgroup_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('sudocmdgroup_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_sudocmdgroup_mod

Wrapper method for sudocmdgroup_mod API

Modify Sudo Command Group.

=over

=item Required arguments

=over

=item cn: Sudo Command Group (type unicode class Str)

=back


=item  Options

=over

=item description: Group description (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmdgroup_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudocmdgroup_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudocmdgroup_remove_member

Wrapper method for sudocmdgroup_remove_member API

Remove members from Sudo Command Group.

=over

=item Required arguments

=over

=item cn: Sudo Command Group (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item sudocmd: sudo commands to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmdgroup_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudocmdgroup_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members sudocmd)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_sudocmdgroup_show

Wrapper method for sudocmdgroup_show API

Display Sudo Command Group.

=over

=item Required arguments

=over

=item cn: Sudo Command Group (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudocmdgroup_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudocmdgroup_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudorule_add

Wrapper method for sudorule_add API

Create new Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item cmdcategory: Command category the rule applies to (type unicode class StrEnum)

=item ipasudorunasusercategory: RunAs User category the rule applies to (type unicode class StrEnum)

=item ipasudorunasgroupcategory: RunAs Group category the rule applies to (type unicode class StrEnum)

=item sudoorder: integer to order the Sudo rules (type int class Int)

=item externaluser: External User the rule applies to (sudorule-find only) (type unicode class Str)

=item externalhost: External host (arrayref of type unicode class Str)

=item ipasudorunasextuser: External User the commands can run as (sudorule-find only) (type unicode class Str)

=item ipasudorunasextgroup: External Group the commands can run as (sudorule-find only) (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipaenabledflag usercategory hostcategory cmdcategory ipasudorunasusercategory ipasudorunasgroupcategory sudoorder externaluser externalhost ipasudorunasextuser ipasudorunasextgroup setattr addattr all raw version no_members)],
        [qw(unicode:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 unicode:0 unicode:1 unicode:0 unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudorule_add_allow_command

Wrapper method for sudorule_add_allow_command API

Add commands and sudo command groups affected by Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item sudocmd: sudo commands to add (arrayref of type unicode class Str)

=item sudocmdgroup: sudo command groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_add_allow_command
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_add_allow_command',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members sudocmd sudocmdgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_sudorule_add_deny_command

Wrapper method for sudorule_add_deny_command API

Add commands and sudo command groups affected by Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item sudocmd: sudo commands to add (arrayref of type unicode class Str)

=item sudocmdgroup: sudo command groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_add_deny_command
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_add_deny_command',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members sudocmd sudocmdgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_sudorule_add_host

Wrapper method for sudorule_add_host API

Add hosts and hostgroups affected by Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to add (arrayref of type unicode class Str)

=item hostgroup: host groups to add (arrayref of type unicode class Str)

=item hostmask: host masks of allowed hosts (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_add_host
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_add_host',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup hostmask)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_sudorule_add_option

Wrapper method for sudorule_add_option API

Add an option to the Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item ipasudoopt: Sudo Option (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_add_option
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_add_option',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipasudoopt all raw version no_members)],
        [qw(unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudorule_add_runasgroup

Wrapper method for sudorule_add_runasgroup API

Add group for Sudo to execute as.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item group: groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_add_runasgroup
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_add_runasgroup',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_sudorule_add_runasuser

Wrapper method for sudorule_add_runasuser API

Add users and groups for Sudo to execute as.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_add_runasuser
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_add_runasuser',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_sudorule_add_user

Wrapper method for sudorule_add_user API

Add users and groups affected by Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_add_user
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_add_user',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_sudorule_del

Wrapper method for sudorule_del API

Delete Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_sudorule_disable

Wrapper method for sudorule_disable API

Disable a Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_disable
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_disable',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_sudorule_enable

Wrapper method for sudorule_enable API

Enable a Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_enable
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_enable',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_sudorule_find

Wrapper method for sudorule_find API

Search for Sudo Rule.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Rule name (type unicode class Str)

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item cmdcategory: Command category the rule applies to (type unicode class StrEnum)

=item ipasudorunasusercategory: RunAs User category the rule applies to (type unicode class StrEnum)

=item ipasudorunasgroupcategory: RunAs Group category the rule applies to (type unicode class StrEnum)

=item sudoorder: integer to order the Sudo rules (type int class Int)

=item externaluser: External User the rule applies to (sudorule-find only) (type unicode class Str)

=item externalhost: External host (arrayref of type unicode class Str)

=item ipasudorunasextuser: External User the commands can run as (sudorule-find only) (type unicode class Str)

=item ipasudorunasextgroup: External Group the commands can run as (sudorule-find only) (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("sudorule-name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('sudorule_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description ipaenabledflag usercategory hostcategory cmdcategory ipasudorunasusercategory ipasudorunasgroupcategory sudoorder externaluser externalhost ipasudorunasextuser ipasudorunasextgroup timelimit sizelimit all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 unicode:0 unicode:1 unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_sudorule_mod

Wrapper method for sudorule_mod API

Modify Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item description: Description (type unicode class Str)

=item ipaenabledflag: Enabled (type bool class Bool)

=item usercategory: User category the rule applies to (type unicode class StrEnum)

=item hostcategory: Host category the rule applies to (type unicode class StrEnum)

=item cmdcategory: Command category the rule applies to (type unicode class StrEnum)

=item ipasudorunasusercategory: RunAs User category the rule applies to (type unicode class StrEnum)

=item ipasudorunasgroupcategory: RunAs Group category the rule applies to (type unicode class StrEnum)

=item sudoorder: integer to order the Sudo rules (type int class Int)

=item externaluser: External User the rule applies to (sudorule-find only) (type unicode class Str)

=item externalhost: External host (arrayref of type unicode class Str)

=item ipasudorunasextuser: External User the commands can run as (sudorule-find only) (type unicode class Str)

=item ipasudorunasextgroup: External Group the commands can run as (sudorule-find only) (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipaenabledflag usercategory hostcategory cmdcategory ipasudorunasusercategory ipasudorunasgroupcategory sudoorder externaluser externalhost ipasudorunasextuser ipasudorunasextgroup setattr addattr delattr rights all raw version no_members)],
        [qw(unicode:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 unicode:0 unicode:1 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudorule_remove_allow_command

Wrapper method for sudorule_remove_allow_command API

Remove commands and sudo command groups affected by Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item sudocmd: sudo commands to remove (arrayref of type unicode class Str)

=item sudocmdgroup: sudo command groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_remove_allow_command
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_remove_allow_command',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members sudocmd sudocmdgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_sudorule_remove_deny_command

Wrapper method for sudorule_remove_deny_command API

Remove commands and sudo command groups affected by Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item sudocmd: sudo commands to remove (arrayref of type unicode class Str)

=item sudocmdgroup: sudo command groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_remove_deny_command
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_remove_deny_command',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members sudocmd sudocmdgroup)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_sudorule_remove_host

Wrapper method for sudorule_remove_host API

Remove hosts and hostgroups affected by Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item host: hosts to remove (arrayref of type unicode class Str)

=item hostgroup: host groups to remove (arrayref of type unicode class Str)

=item hostmask: host masks of allowed hosts (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_remove_host
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_remove_host',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members host hostgroup hostmask)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_sudorule_remove_option

Wrapper method for sudorule_remove_option API

Remove an option from Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item ipasudoopt: Sudo Option (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_remove_option
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_remove_option',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipasudoopt all raw version no_members)],
        [qw(unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_sudorule_remove_runasgroup

Wrapper method for sudorule_remove_runasgroup API

Remove group for Sudo to execute as.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item group: groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_remove_runasgroup
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_remove_runasgroup',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1)],
    );
}



=item api_sudorule_remove_runasuser

Wrapper method for sudorule_remove_runasuser API

Remove users and groups for Sudo to execute as.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_remove_runasuser
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_remove_runasuser',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_sudorule_remove_user

Wrapper method for sudorule_remove_user API

Remove users and groups affected by Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_remove_user
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_remove_user',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members user group)],
        [qw(bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1)],
    );
}



=item api_sudorule_show

Wrapper method for sudorule_show API

Display Sudo Rule.

=over

=item Required arguments

=over

=item cn: Rule name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_sudorule_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('sudorule_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version no_members)],
        [qw(bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_topologysegment_add

Wrapper method for topologysegment_add API

Add a new segment.

=over

=item Required arguments

=over

=item topologysuffixcn: Suffix name (type unicode class Str)

=item cn: Arbitrary string identifying the segment (type unicode class Str)

=back


=item  Options

=over

=item iparepltoposegmentleftnode: Left replication node - an IPA server (type unicode class Str)

=item iparepltoposegmentrightnode: Right replication node - an IPA server (type unicode class Str)

=item iparepltoposegmentdirection: Direction of replication between left and right replication node (type unicode class StrEnum)

=item nsds5replicastripattrs: A space separated list of attributes which are removed from replication updates. (type unicode class Str)

=item nsds5replicatedattributelist: Attributes that are not replicated to a consumer server during a fractional update. E.g., `(objectclass=*) $ EXCLUDE accountlockout memberof (type unicode class Str)

=item nsds5replicatedattributelisttotal: Attributes that are not replicated to a consumer server during a total update. E.g. (objectclass=*) $ EXCLUDE accountlockout (type unicode class Str)

=item nsds5replicatimeout: Number of seconds outbound LDAP operations waits for a response from the remote replica before timing out and failing (type int class Int)

=item nsds5replicaenabled: Whether a replication agreement is active, meaning whether replication is occurring per that agreement (type unicode class StrEnum)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysegment_add
{    
    my ($self, $topologysuffixcn, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysegment_add',    
        [$topologysuffixcn, $cn],
        [qw(topologysuffixcn cn)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(iparepltoposegmentleftnode iparepltoposegmentrightnode iparepltoposegmentdirection nsds5replicastripattrs nsds5replicatedattributelist nsds5replicatedattributelisttotal nsds5replicatimeout nsds5replicaenabled setattr addattr all raw version)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_topologysegment_del

Wrapper method for topologysegment_del API

Delete a segment.

=over

=item Required arguments

=over

=item topologysuffixcn: Suffix name (type unicode class Str)

=item cn: Arbitrary string identifying the segment (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysegment_del
{    
    my ($self, $topologysuffixcn, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysegment_del',    
        [$topologysuffixcn, $cn],
        [qw(topologysuffixcn cn)],
        [qw(unicode:0 unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_topologysegment_find

Wrapper method for topologysegment_find API

Search for topology segments.

=over

=item Required arguments

=over

=item topologysuffixcn: Suffix name (type unicode class Str)

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Arbitrary string identifying the segment (type unicode class Str)

=item iparepltoposegmentleftnode: Left replication node - an IPA server (type unicode class Str)

=item iparepltoposegmentrightnode: Right replication node - an IPA server (type unicode class Str)

=item iparepltoposegmentdirection: Direction of replication between left and right replication node (type unicode class StrEnum)

=item nsds5replicastripattrs: A space separated list of attributes which are removed from replication updates. (type unicode class Str)

=item nsds5replicatedattributelist: Attributes that are not replicated to a consumer server during a fractional update. E.g., `(objectclass=*) $ EXCLUDE accountlockout memberof (type unicode class Str)

=item nsds5replicatedattributelisttotal: Attributes that are not replicated to a consumer server during a total update. E.g. (objectclass=*) $ EXCLUDE accountlockout (type unicode class Str)

=item nsds5replicatimeout: Number of seconds outbound LDAP operations waits for a response from the remote replica before timing out and failing (type int class Int)

=item nsds5replicaenabled: Whether a replication agreement is active, meaning whether replication is occurring per that agreement (type unicode class StrEnum)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysegment_find
{    
    my ($self, $topologysuffixcn, $criteria, %opts) = @_;
    
    return $self->rpc_api('topologysegment_find',    
        [$topologysuffixcn, $criteria],
        [qw(topologysuffixcn criteria)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(cn iparepltoposegmentleftnode iparepltoposegmentrightnode iparepltoposegmentdirection nsds5replicastripattrs nsds5replicatedattributelist nsds5replicatedattributelisttotal nsds5replicatimeout nsds5replicaenabled timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_topologysegment_mod

Wrapper method for topologysegment_mod API

Modify a segment.

=over

=item Required arguments

=over

=item topologysuffixcn: Suffix name (type unicode class Str)

=item cn: Arbitrary string identifying the segment (type unicode class Str)

=back


=item  Options

=over

=item nsds5replicastripattrs: A space separated list of attributes which are removed from replication updates. (type unicode class Str)

=item nsds5replicatedattributelist: Attributes that are not replicated to a consumer server during a fractional update. E.g., `(objectclass=*) $ EXCLUDE accountlockout memberof (type unicode class Str)

=item nsds5replicatedattributelisttotal: Attributes that are not replicated to a consumer server during a total update. E.g. (objectclass=*) $ EXCLUDE accountlockout (type unicode class Str)

=item nsds5replicatimeout: Number of seconds outbound LDAP operations waits for a response from the remote replica before timing out and failing (type int class Int)

=item nsds5replicaenabled: Whether a replication agreement is active, meaning whether replication is occurring per that agreement (type unicode class StrEnum)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysegment_mod
{    
    my ($self, $topologysuffixcn, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysegment_mod',    
        [$topologysuffixcn, $cn],
        [qw(topologysuffixcn cn)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(nsds5replicastripattrs nsds5replicatedattributelist nsds5replicatedattributelisttotal nsds5replicatimeout nsds5replicaenabled setattr addattr delattr rights all raw version)],
        [qw(unicode:0 unicode:0 unicode:0 int:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_topologysegment_reinitialize

Wrapper method for topologysegment_reinitialize API

Request a full re-initialization of the node retrieving data from the other node.

=over

=item Required arguments

=over

=item topologysuffixcn: Suffix name (type unicode class Str)

=item cn: Arbitrary string identifying the segment (type unicode class Str)

=back


=item  Options

=over

=item left: Initialize left node (type bool class Flag)

=item right: Initialize right node (type bool class Flag)

=item stop: Stop already started refresh of chosen node(s) (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysegment_reinitialize
{    
    my ($self, $topologysuffixcn, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysegment_reinitialize',    
        [$topologysuffixcn, $cn],
        [qw(topologysuffixcn cn)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(left right stop version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_topologysegment_show

Wrapper method for topologysegment_show API

Display a segment.

=over

=item Required arguments

=over

=item topologysuffixcn: Suffix name (type unicode class Str)

=item cn: Arbitrary string identifying the segment (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysegment_show
{    
    my ($self, $topologysuffixcn, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysegment_show',    
        [$topologysuffixcn, $cn],
        [qw(topologysuffixcn cn)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_topologysuffix_add

Wrapper method for topologysuffix_add API

Add a new topology suffix to be managed.

=over

=item Required arguments

=over

=item cn: Suffix name (type unicode class Str)

=back


=item  Options

=over

=item iparepltopoconfroot: LDAP suffix to be managed (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysuffix_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysuffix_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(iparepltopoconfroot setattr addattr all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_topologysuffix_del

Wrapper method for topologysuffix_del API

Delete a topology suffix.

=over

=item Required arguments

=over

=item cn: Suffix name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysuffix_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysuffix_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_topologysuffix_find

Wrapper method for topologysuffix_find API

Search for topology suffices.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Suffix name (type unicode class Str)

=item iparepltopoconfroot: LDAP suffix to be managed (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysuffix_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('topologysuffix_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn iparepltopoconfroot timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_topologysuffix_mod

Wrapper method for topologysuffix_mod API

Modify a topology suffix.

=over

=item Required arguments

=over

=item cn: Suffix name (type unicode class Str)

=back


=item  Options

=over

=item iparepltopoconfroot: LDAP suffix to be managed (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysuffix_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysuffix_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(iparepltopoconfroot setattr addattr delattr rights all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_topologysuffix_show

Wrapper method for topologysuffix_show API

Show managed suffix.

=over

=item Required arguments

=over

=item cn: Suffix name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysuffix_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysuffix_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_topologysuffix_verify

Wrapper method for topologysuffix_verify API


Verify replication topology for suffix.

Checks done:
  1. check if a topology is not disconnected. In other words if there are
     replication paths between all servers.
  2. check if servers don't have more than the recommended number of
     replication agreements


=over

=item Required arguments

=over

=item cn: Suffix name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_topologysuffix_verify
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('topologysuffix_verify',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_trust_add

Wrapper method for trust_add API


Add new trust to use.

This command establishes trust relationship to another domain
which becomes 'trusted'. As result, users of the trusted domain
may access resources of this domain.

Only trusts to Active Directory domains are supported right now.

The command can be safely run multiple times against the same domain,
this will cause change to trust relationship credentials on both
sides.
    

=over

=item Required arguments

=over

=item cn: Realm name (type unicode class Str)

=back


=item  Options

=over

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item trust_type: Trust type (ad for Active Directory, default) (type unicode class StrEnum)

=item realm_admin: Active Directory domain administrator (type unicode class Str)

=item realm_passwd: Active Directory domain administrator's password (type unicode class Password)

=item realm_server: Domain controller for the Active Directory domain (optional) (type unicode class Str)

=item trust_secret: Shared secret for the trust (type unicode class Password)

=item base_id: First Posix ID of the range reserved for the trusted domain (type int class Int)

=item range_size: Size of the ID range reserved for the trusted domain (type int class Int)

=item range_type: Type of trusted domain ID range, one of ipa-ad-trust-posix, ipa-ad-trust (type unicode class StrEnum)

=item bidirectional: Establish bi-directional trust. By default trust is inbound one-way only. (type bool class Bool)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trust_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('trust_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(setattr addattr trust_type realm_admin realm_passwd realm_server trust_secret base_id range_size range_type bidirectional all raw version)],
        [qw(unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 int:0 int:0 unicode:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_trust_del

Wrapper method for trust_del API

Delete a trust.

=over

=item Required arguments

=over

=item cn: Realm name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trust_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('trust_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_trust_fetch_domains

Wrapper method for trust_fetch_domains API

Refresh list of the domains associated with the trust

=over

=item Required arguments

=over

=item cn: Realm name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item realm_server: Domain controller for the Active Directory domain (optional) (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trust_fetch_domains
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('trust_fetch_domains',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights realm_server all raw version)],
        [qw(bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_trust_find

Wrapper method for trust_find API

Search for trusts.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Realm name (type unicode class Str)

=item ipantflatname: Domain NetBIOS name (type unicode class Str)

=item ipanttrusteddomainsid: Domain Security Identifier (type unicode class Str)

=item ipantsidblacklistincoming: SID blacklist incoming (arrayref of type unicode class Str)

=item ipantsidblacklistoutgoing: SID blacklist outgoing (arrayref of type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("realm") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trust_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('trust_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn ipantflatname ipanttrusteddomainsid ipantsidblacklistincoming ipantsidblacklistoutgoing timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_trust_mod

Wrapper method for trust_mod API


    Modify a trust (for future use).

    Currently only the default option to modify the LDAP attributes is
    available. More specific options will be added in coming releases.
    

=over

=item Required arguments

=over

=item cn: Realm name (type unicode class Str)

=back


=item  Options

=over

=item ipantsidblacklistincoming: SID blacklist incoming (arrayref of type unicode class Str)

=item ipantsidblacklistoutgoing: SID blacklist outgoing (arrayref of type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trust_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('trust_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(ipantsidblacklistincoming ipantsidblacklistoutgoing setattr addattr delattr rights all raw version)],
        [qw(unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_trust_resolve

Wrapper method for trust_resolve API

Resolve security identifiers of users and groups in trusted domains

=over

=item No required arguments

=item  Options

=over

=item sids: Security Identifiers (SIDs) (arrayref of type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trust_resolve
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('trust_resolve',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(sids all raw version)],
        [qw(unicode:1 bool:0 bool:0 unicode:0)],
    );
}



=item api_trust_show

Wrapper method for trust_show API

Display information about a trust.

=over

=item Required arguments

=over

=item cn: Realm name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trust_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('trust_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights all raw version)],
        [qw(bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_trustconfig_mod

Wrapper method for trustconfig_mod API

Modify global trust configuration.

=over

=item No required arguments

=item  Options

=over

=item ipantfallbackprimarygroup: Fallback primary group (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item trust_type: Trust type (ad for Active Directory, default) (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trustconfig_mod
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('trustconfig_mod',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(ipantfallbackprimarygroup setattr addattr delattr rights trust_type all raw version)],
        [qw(unicode:0 unicode:1 unicode:1 unicode:1 bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_trustconfig_show

Wrapper method for trustconfig_show API

Show global trust configuration.

=over

=item No required arguments

=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item trust_type: Trust type (ad for Active Directory, default) (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trustconfig_show
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('trustconfig_show',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(rights trust_type all raw version)],
        [qw(bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_trustdomain_add

Wrapper method for trustdomain_add API

Allow access from the trusted domain

=over

=item Required arguments

=over

=item trustcn: Realm name (type unicode class Str)

=item cn: Domain name (type unicode class Str)

=back


=item  Options

=over

=item ipantflatname: Domain NetBIOS name (type unicode class Str)

=item ipanttrusteddomainsid: Domain Security Identifier (type unicode class Str)

=item ipanttrustpartner: Trusted domain partner (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item trust_type: Trust type (ad for Active Directory, default) (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trustdomain_add
{    
    my ($self, $trustcn, $cn, %opts) = @_;
    
    return $self->rpc_api('trustdomain_add',    
        [$trustcn, $cn],
        [qw(trustcn cn)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(ipantflatname ipanttrusteddomainsid ipanttrustpartner setattr addattr trust_type all raw version)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_trustdomain_del

Wrapper method for trustdomain_del API

Remove infromation about the domain associated with the trust.

=over

=item Required arguments

=over

=item trustcn: Realm name (type unicode class Str)

=item cn: Domain name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trustdomain_del
{    
    my ($self, $trustcn, $cn, %opts) = @_;
    
    return $self->rpc_api('trustdomain_del',    
        [$trustcn, $cn],
        [qw(trustcn cn)],
        [qw(unicode:0 unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_trustdomain_disable

Wrapper method for trustdomain_disable API

Disable use of IPA resources by the domain of the trust

=over

=item Required arguments

=over

=item trustcn: Realm name (type unicode class Str)

=item cn: Domain name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trustdomain_disable
{    
    my ($self, $trustcn, $cn, %opts) = @_;
    
    return $self->rpc_api('trustdomain_disable',    
        [$trustcn, $cn],
        [qw(trustcn cn)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_trustdomain_enable

Wrapper method for trustdomain_enable API

Allow use of IPA resources by the domain of the trust

=over

=item Required arguments

=over

=item trustcn: Realm name (type unicode class Str)

=item cn: Domain name (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trustdomain_enable
{    
    my ($self, $trustcn, $cn, %opts) = @_;
    
    return $self->rpc_api('trustdomain_enable',    
        [$trustcn, $cn],
        [qw(trustcn cn)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_trustdomain_find

Wrapper method for trustdomain_find API

Search domains of the trust

=over

=item Required arguments

=over

=item trustcn: Realm name (type unicode class Str)

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Domain name (type unicode class Str)

=item ipantflatname: Domain NetBIOS name (type unicode class Str)

=item ipanttrusteddomainsid: Domain Security Identifier (type unicode class Str)

=item ipanttrustpartner: Trusted domain partner (type unicode class Str)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item pkey_only: Results should contain primary key attribute only ("domain") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trustdomain_find
{    
    my ($self, $trustcn, $criteria, %opts) = @_;
    
    return $self->rpc_api('trustdomain_find',    
        [$trustcn, $criteria],
        [qw(trustcn criteria)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(cn ipantflatname ipanttrusteddomainsid ipanttrustpartner timelimit sizelimit all raw version pkey_only)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 int:0 int:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_trustdomain_mod

Wrapper method for trustdomain_mod API

Modify trustdomain of the trust

=over

=item Required arguments

=over

=item trustcn: Realm name (type unicode class Str)

=item cn: Domain name (type unicode class Str)

=back


=item  Options

=over

=item ipantflatname: Domain NetBIOS name (type unicode class Str)

=item ipanttrusteddomainsid: Domain Security Identifier (type unicode class Str)

=item ipanttrustpartner: Trusted domain partner (type unicode class Str)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item trust_type: Trust type (ad for Active Directory, default) (type unicode class StrEnum)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_trustdomain_mod
{    
    my ($self, $trustcn, $cn, %opts) = @_;
    
    return $self->rpc_api('trustdomain_mod',    
        [$trustcn, $cn],
        [qw(trustcn cn)],
        [qw(unicode:0 unicode:0)],
        \%opts,
        [qw(ipantflatname ipanttrusteddomainsid ipanttrustpartner setattr addattr delattr rights trust_type all raw version)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 bool:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_user_add

Wrapper method for user_add API

Add a new user.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item givenname: First name (type unicode class Str)

=item sn: Last name (type unicode class Str)

=item cn: Full name (type unicode class Str)

=item displayname: Display name (type unicode class Str)

=item initials: Initials (type unicode class Str)

=item homedirectory: Home directory (type unicode class Str)

=item gecos: GECOS (type unicode class Str)

=item loginshell: Login shell (type unicode class Str)

=item krbprincipalname: Kerberos principal (type unicode class Str)

=item krbprincipalexpiration: Kerberos principal expiration (type datetime class DateTime)

=item mail: Email address (arrayref of type unicode class Str)

=item userpassword: Prompt to set the user password (type unicode class Password)

=item random: Generate a random user password (type bool class Flag)

=item uidnumber: User ID Number (system will assign one if not provided) (type int class Int)

=item gidnumber: Group ID Number (type int class Int)

=item street: Street address (type unicode class Str)

=item l: City (type unicode class Str)

=item st: State/Province (type unicode class Str)

=item postalcode: ZIP (type unicode class Str)

=item telephonenumber: Telephone Number (arrayref of type unicode class Str)

=item mobile: Mobile Telephone Number (arrayref of type unicode class Str)

=item pager: Pager Number (arrayref of type unicode class Str)

=item facsimiletelephonenumber: Fax Number (arrayref of type unicode class Str)

=item ou: Org. Unit (type unicode class Str)

=item title: Job Title (type unicode class Str)

=item manager: Manager (type unicode class Str)

=item carlicense: Car License (arrayref of type unicode class Str)

=item ipasshpubkey: SSH public key (arrayref of type unicode class Str)

=item ipauserauthtype: Types of supported user authentication (arrayref of type unicode class StrEnum)

=item userclass: User category (semantics placed on this attribute are for local interpretation) (arrayref of type unicode class Str)

=item ipatokenradiusconfiglink: RADIUS proxy configuration (type unicode class Str)

=item ipatokenradiususername: RADIUS proxy username (type unicode class Str)

=item departmentnumber: Department Number (arrayref of type unicode class Str)

=item employeenumber: Employee Number (type unicode class Str)

=item employeetype: Employee Type (type unicode class Str)

=item preferredlanguage: Preferred Language (type unicode class Str)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item nsaccountlock: Account disabled (type bool class Bool)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item noprivate: Don't create user private group (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_add
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_add',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(givenname sn cn displayname initials homedirectory gecos loginshell krbprincipalname krbprincipalexpiration mail userpassword random uidnumber gidnumber street l st postalcode telephonenumber mobile pager facsimiletelephonenumber ou title manager carlicense ipasshpubkey ipauserauthtype userclass ipatokenradiusconfiglink ipatokenradiususername departmentnumber employeenumber employeetype preferredlanguage usercertificate nsaccountlock setattr addattr noprivate all raw version no_members)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 datetime:0 unicode:1 unicode:0 bool:0 int:0 int:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:1 unicode:0 unicode:0 unicode:0 str:1 bool:0 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_user_add_cert

Wrapper method for user_add_cert API

Add one or more certificates to the user entry

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_add_cert
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_add_cert',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members usercertificate)],
        [qw(bool:0 bool:0 unicode:0 bool:0 str:1)],
    );
}



=item api_user_del

Wrapper method for user_del API

Delete a user.

=over

=item Required arguments

=over

=item uid: User login (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item preserve: <preserve> (type bool class Bool)

=item preserve: Delete a user, keeping the entry available for future use (type bool class Flag)

=item no_preserve: Delete a user (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_del
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_del',    
        [$uid],
        [qw(uid)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue preserve preserve no_preserve version)],
        [qw(bool:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_user_disable

Wrapper method for user_disable API

Disable a user account.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_disable
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_disable',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_user_enable

Wrapper method for user_enable API

Enable a user account.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_enable
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_enable',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_user_find

Wrapper method for user_find API

Search for users.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item uid: User login (type unicode class Str)

=item givenname: First name (type unicode class Str)

=item sn: Last name (type unicode class Str)

=item cn: Full name (type unicode class Str)

=item displayname: Display name (type unicode class Str)

=item initials: Initials (type unicode class Str)

=item homedirectory: Home directory (type unicode class Str)

=item gecos: GECOS (type unicode class Str)

=item loginshell: Login shell (type unicode class Str)

=item krbprincipalname: Kerberos principal (type unicode class Str)

=item krbprincipalexpiration: Kerberos principal expiration (type datetime class DateTime)

=item mail: Email address (arrayref of type unicode class Str)

=item userpassword: Prompt to set the user password (type unicode class Password)

=item uidnumber: User ID Number (system will assign one if not provided) (type int class Int)

=item gidnumber: Group ID Number (type int class Int)

=item street: Street address (type unicode class Str)

=item l: City (type unicode class Str)

=item st: State/Province (type unicode class Str)

=item postalcode: ZIP (type unicode class Str)

=item telephonenumber: Telephone Number (arrayref of type unicode class Str)

=item mobile: Mobile Telephone Number (arrayref of type unicode class Str)

=item pager: Pager Number (arrayref of type unicode class Str)

=item facsimiletelephonenumber: Fax Number (arrayref of type unicode class Str)

=item ou: Org. Unit (type unicode class Str)

=item title: Job Title (type unicode class Str)

=item manager: Manager (type unicode class Str)

=item carlicense: Car License (arrayref of type unicode class Str)

=item ipauserauthtype: Types of supported user authentication (arrayref of type unicode class StrEnum)

=item userclass: User category (semantics placed on this attribute are for local interpretation) (arrayref of type unicode class Str)

=item ipatokenradiusconfiglink: RADIUS proxy configuration (type unicode class Str)

=item ipatokenradiususername: RADIUS proxy username (type unicode class Str)

=item departmentnumber: Department Number (arrayref of type unicode class Str)

=item employeenumber: Employee Number (type unicode class Str)

=item employeetype: Employee Type (type unicode class Str)

=item preferredlanguage: Preferred Language (type unicode class Str)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item nsaccountlock: Account disabled (type bool class Bool)

=item preserved: Preserved user (type bool class Bool)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item whoami: Display user record for current Kerberos principal (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("login") (type bool class Flag)

=item in_group: Search for users with these member of groups. (arrayref of type unicode class Str)

=item not_in_group: Search for users without these member of groups. (arrayref of type unicode class Str)

=item in_netgroup: Search for users with these member of netgroups. (arrayref of type unicode class Str)

=item not_in_netgroup: Search for users without these member of netgroups. (arrayref of type unicode class Str)

=item in_role: Search for users with these member of roles. (arrayref of type unicode class Str)

=item not_in_role: Search for users without these member of roles. (arrayref of type unicode class Str)

=item in_hbacrule: Search for users with these member of HBAC rules. (arrayref of type unicode class Str)

=item not_in_hbacrule: Search for users without these member of HBAC rules. (arrayref of type unicode class Str)

=item in_sudorule: Search for users with these member of sudo rules. (arrayref of type unicode class Str)

=item not_in_sudorule: Search for users without these member of sudo rules. (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('user_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(uid givenname sn cn displayname initials homedirectory gecos loginshell krbprincipalname krbprincipalexpiration mail userpassword uidnumber gidnumber street l st postalcode telephonenumber mobile pager facsimiletelephonenumber ou title manager carlicense ipauserauthtype userclass ipatokenradiusconfiglink ipatokenradiususername departmentnumber employeenumber employeetype preferredlanguage usercertificate nsaccountlock preserved timelimit sizelimit whoami all raw version no_members pkey_only in_group not_in_group in_netgroup not_in_netgroup in_role not_in_role in_hbacrule not_in_hbacrule in_sudorule not_in_sudorule)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 datetime:0 unicode:1 unicode:0 int:0 int:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:1 unicode:0 unicode:0 unicode:0 str:1 bool:0 bool:0 int:0 int:0 bool:0 bool:0 bool:0 unicode:0 bool:0 bool:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_user_mod

Wrapper method for user_mod API

Modify a user.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item givenname: First name (type unicode class Str)

=item sn: Last name (type unicode class Str)

=item cn: Full name (type unicode class Str)

=item displayname: Display name (type unicode class Str)

=item initials: Initials (type unicode class Str)

=item homedirectory: Home directory (type unicode class Str)

=item gecos: GECOS (type unicode class Str)

=item loginshell: Login shell (type unicode class Str)

=item krbprincipalexpiration: Kerberos principal expiration (type datetime class DateTime)

=item mail: Email address (arrayref of type unicode class Str)

=item userpassword: Prompt to set the user password (type unicode class Password)

=item random: Generate a random user password (type bool class Flag)

=item uidnumber: User ID Number (system will assign one if not provided) (type int class Int)

=item gidnumber: Group ID Number (type int class Int)

=item street: Street address (type unicode class Str)

=item l: City (type unicode class Str)

=item st: State/Province (type unicode class Str)

=item postalcode: ZIP (type unicode class Str)

=item telephonenumber: Telephone Number (arrayref of type unicode class Str)

=item mobile: Mobile Telephone Number (arrayref of type unicode class Str)

=item pager: Pager Number (arrayref of type unicode class Str)

=item facsimiletelephonenumber: Fax Number (arrayref of type unicode class Str)

=item ou: Org. Unit (type unicode class Str)

=item title: Job Title (type unicode class Str)

=item manager: Manager (type unicode class Str)

=item carlicense: Car License (arrayref of type unicode class Str)

=item ipasshpubkey: SSH public key (arrayref of type unicode class Str)

=item ipauserauthtype: Types of supported user authentication (arrayref of type unicode class StrEnum)

=item userclass: User category (semantics placed on this attribute are for local interpretation) (arrayref of type unicode class Str)

=item ipatokenradiusconfiglink: RADIUS proxy configuration (type unicode class Str)

=item ipatokenradiususername: RADIUS proxy username (type unicode class Str)

=item departmentnumber: Department Number (arrayref of type unicode class Str)

=item employeenumber: Employee Number (type unicode class Str)

=item employeetype: Employee Type (type unicode class Str)

=item preferredlanguage: Preferred Language (type unicode class Str)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item nsaccountlock: Account disabled (type bool class Bool)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item rename: Rename the user object (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_mod
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_mod',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(givenname sn cn displayname initials homedirectory gecos loginshell krbprincipalexpiration mail userpassword random uidnumber gidnumber street l st postalcode telephonenumber mobile pager facsimiletelephonenumber ou title manager carlicense ipasshpubkey ipauserauthtype userclass ipatokenradiusconfiglink ipatokenradiususername departmentnumber employeenumber employeetype preferredlanguage usercertificate nsaccountlock setattr addattr delattr rights all raw version no_members rename)],
        [qw(unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 datetime:0 unicode:1 unicode:0 bool:0 int:0 int:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:0 unicode:1 unicode:1 unicode:1 unicode:1 unicode:0 unicode:0 unicode:1 unicode:0 unicode:0 unicode:0 str:1 bool:0 unicode:1 unicode:1 unicode:1 bool:0 bool:0 bool:0 unicode:0 bool:0 unicode:0)],
    );
}



=item api_user_remove_cert

Wrapper method for user_remove_cert API

Remove one or more certificates to the user entry

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item usercertificate: Base-64 encoded server certificate (arrayref of type str class Bytes)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_remove_cert
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_remove_cert',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members usercertificate)],
        [qw(bool:0 bool:0 unicode:0 bool:0 str:1)],
    );
}



=item api_user_show

Wrapper method for user_show API

Display information about a user.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item out: file to store certificate in (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_show
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_show',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights out all raw version no_members)],
        [qw(bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_user_stage

Wrapper method for user_stage API

Move deleted user into staged area

=over

=item Required arguments

=over

=item uid: User login (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_stage
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_stage',    
        [$uid],
        [qw(uid)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue version)],
        [qw(bool:0 unicode:0)],
    );
}



=item api_user_status

Wrapper method for user_status API


    Lockout status of a user account

    An account may become locked if the password is entered incorrectly too
    many times within a specific time period as controlled by password
    policy. A locked account is a temporary condition and may be unlocked by
    an administrator.

    This connects to each IPA master and displays the lockout status on
    each one.

    To determine whether an account is locked on a given server you need
    to compare the number of failed logins and the time of the last failure.
    For an account to be locked it must exceed the maxfail failures within
    the failinterval duration as specified in the password policy associated
    with the user.

    The failed login counter is modified only when a user attempts a log in
    so it is possible that an account may appear locked but the last failed
    login attempt is older than the lockouttime of the password policy. This
    means that the user may attempt a login again. 

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_status
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_status',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(all raw version no_members)],
        [qw(bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_user_undel

Wrapper method for user_undel API

Undelete a delete user account.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_undel
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_undel',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_user_unlock

Wrapper method for user_unlock API


    Unlock a user account

    An account may become locked if the password is entered incorrectly too
    many times within a specific time period as controlled by password
    policy. A locked account is a temporary condition and may be unlocked by
    an administrator.

=over

=item Required arguments

=over

=item uid: User login (type unicode class Str)

=back


=item  Options

=over

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_user_unlock
{    
    my ($self, $uid, %opts) = @_;
    
    return $self->rpc_api('user_unlock',    
        [$uid],
        [qw(uid)],
        [qw(unicode:0)],
        \%opts,
        [qw(version)],
        [qw(unicode:0)],
    );
}



=item api_vault_add

Wrapper method for vault_add API

Create a new vault.

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item description: Vault description (type unicode class Str)

=item ipavaulttype: Vault type (type unicode class StrEnum)

=item password: Vault password (type unicode class Str)

=item password_file: File containing the vault password (type unicode class Str)

=item ipavaultpublickey: Vault public key (type str class Bytes)

=item public_key_file: File containing the vault public key (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_add
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_add',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(setattr addattr service shared username description ipavaulttype password password_file ipavaultpublickey public_key_file all raw version)],
        [qw(unicode:1 unicode:1 unicode:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 unicode:0 str:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_vault_add_internal

Wrapper method for vault_add_internal API

None

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item description: Vault description (type unicode class Str)

=item ipavaulttype: Vault type (type unicode class StrEnum)

=item ipavaultsalt: Vault salt (type str class Bytes)

=item ipavaultpublickey: Vault public key (type str class Bytes)

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_add_internal
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_add_internal',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipavaulttype ipavaultsalt ipavaultpublickey service shared username all raw version no_members)],
        [qw(unicode:0 unicode:0 str:0 str:0 unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_vault_add_member

Wrapper method for vault_add_member API

Add members to a vault.

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item services: services to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_add_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_add_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(service shared username all raw version no_members user group services)],
        [qw(unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_vault_add_owner

Wrapper method for vault_add_owner API

Add owners to a vault.

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item services: services to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_add_owner
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_add_owner',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(service shared username all raw version no_members user group services)],
        [qw(unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_vault_archive

Wrapper method for vault_archive API

Archive data into a vault.

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item data: Binary data to archive (type str class Bytes)

=item in: File containing data to archive (type unicode class Str)

=item password: Vault password (type unicode class Str)

=item password_file: File containing the vault password (type unicode class Str)

=item override_password: Override existing password (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_archive
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_archive',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(service shared username data in password password_file override_password all raw version)],
        [qw(unicode:0 bool:0 unicode:0 str:0 unicode:0 unicode:0 unicode:0 bool:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_vault_archive_internal

Wrapper method for vault_archive_internal API

None

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item session_key: Session key wrapped with transport certificate (type str class Bytes)

=item vault_data: Vault data encrypted with session key (type str class Bytes)

=item nonce: Nonce (type str class Bytes)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_archive_internal
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_archive_internal',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(service shared username session_key vault_data nonce all raw version)],
        [qw(unicode:0 bool:0 unicode:0 str:0 str:0 str:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_vault_del

Wrapper method for vault_del API

Delete a vault.

=over

=item Required arguments

=over

=item cn: Vault name (arrayref of type unicode class Str)

=back


=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_del
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_del',    
        [$cn],
        [qw(cn)],
        [qw(unicode:1)],
        \%opts,
        [qw(continue service shared username version)],
        [qw(bool:0 unicode:0 bool:0 unicode:0 unicode:0)],
    );
}



=item api_vault_find

Wrapper method for vault_find API

Search for vaults.

=over

=item Required arguments

=over

=item criteria: A string searched in all relevant object attributes (type unicode class Str)

=back


=item  Options

=over

=item cn: Vault name (type unicode class Str)

=item description: Vault description (type unicode class Str)

=item ipavaulttype: Vault type (type unicode class StrEnum)

=item timelimit: Time limit of search in seconds (type int class Int)

=item sizelimit: Maximum number of entries returned (type int class Int)

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item services: List all service vaults (type bool class Flag)

=item users: List all user vaults (type bool class Flag)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item pkey_only: Results should contain primary key attribute only ("name") (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_find
{    
    my ($self, $criteria, %opts) = @_;
    
    return $self->rpc_api('vault_find',    
        [$criteria],
        [qw(criteria)],
        [qw(unicode:0)],
        \%opts,
        [qw(cn description ipavaulttype timelimit sizelimit service shared username services users all raw version no_members pkey_only)],
        [qw(unicode:0 unicode:0 unicode:0 int:0 int:0 unicode:0 bool:0 unicode:0 bool:0 bool:0 bool:0 bool:0 unicode:0 bool:0 bool:0)],
    );
}



=item api_vault_mod

Wrapper method for vault_mod API

Modify a vault.

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item description: Vault description (type unicode class Str)

=item ipavaulttype: Vault type (type unicode class Str)

=item ipavaultsalt: Vault salt (type str class Bytes)

=item change_password: Change password (type bool class Flag)

=item old_password: Old vault password (type unicode class Str)

=item old_password_file: File containing the old vault password (type unicode class Str)

=item new_password: New vault password (type unicode class Str)

=item new_password_file: File containing the new vault password (type unicode class Str)

=item private_key: Old vault private key (type str class Bytes)

=item private_key_file: File containing the old vault private key (type unicode class Str)

=item ipavaultpublickey: New vault public key (type str class Bytes)

=item public_key_file: File containing the new vault public key (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_mod
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_mod',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(service shared username description ipavaulttype ipavaultsalt change_password old_password old_password_file new_password new_password_file private_key private_key_file ipavaultpublickey public_key_file all raw version)],
        [qw(unicode:0 bool:0 unicode:0 unicode:0 unicode:0 str:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 str:0 unicode:0 str:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_vault_mod_internal

Wrapper method for vault_mod_internal API

None

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item description: Vault description (type unicode class Str)

=item ipavaulttype: Vault type (type unicode class StrEnum)

=item ipavaultsalt: Vault salt (type str class Bytes)

=item ipavaultpublickey: Vault public key (type str class Bytes)

=item setattr: Set an attribute to a name/value pair. Format is attr=value.
For multi-valued attributes, the command replaces the values already present. (arrayref of type unicode class Str)

=item addattr: Add an attribute/value pair. Format is attr=value. The attribute
must be part of the schema. (arrayref of type unicode class Str)

=item delattr: Delete an attribute/value pair. The option will be evaluated
last, after all sets and adds. (arrayref of type unicode class Str)

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_mod_internal
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_mod_internal',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(description ipavaulttype ipavaultsalt ipavaultpublickey setattr addattr delattr rights service shared username all raw version no_members)],
        [qw(unicode:0 unicode:0 str:0 str:0 unicode:1 unicode:1 unicode:1 bool:0 unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_vault_remove_member

Wrapper method for vault_remove_member API

Remove members from a vault.

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item services: services to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_remove_member
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_remove_member',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(service shared username all raw version no_members user group services)],
        [qw(unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_vault_remove_owner

Wrapper method for vault_remove_owner API

Remove owners from a vault.

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item services: services to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_remove_owner
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_remove_owner',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(service shared username all raw version no_members user group services)],
        [qw(unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_vault_retrieve

Wrapper method for vault_retrieve API

Retrieve a data from a vault.

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item out: File to store retrieved data (type unicode class Str)

=item password: Vault password (type unicode class Str)

=item password_file: File containing the vault password (type unicode class Str)

=item private_key: Vault private key (type str class Bytes)

=item private_key_file: File containing the vault private key (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_retrieve
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_retrieve',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(service shared username out password password_file private_key private_key_file all raw version)],
        [qw(unicode:0 bool:0 unicode:0 unicode:0 unicode:0 unicode:0 str:0 unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_vault_retrieve_internal

Wrapper method for vault_retrieve_internal API

None

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item session_key: Session key wrapped with transport certificate (type str class Bytes)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_retrieve_internal
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_retrieve_internal',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(service shared username session_key all raw version)],
        [qw(unicode:0 bool:0 unicode:0 str:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_vault_show

Wrapper method for vault_show API

Display information about a vault.

=over

=item Required arguments

=over

=item cn: Vault name (type unicode class Str)

=back


=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vault_show
{    
    my ($self, $cn, %opts) = @_;
    
    return $self->rpc_api('vault_show',    
        [$cn],
        [qw(cn)],
        [qw(unicode:0)],
        \%opts,
        [qw(rights service shared username all raw version no_members)],
        [qw(bool:0 unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=item api_vaultconfig_show

Wrapper method for vaultconfig_show API

Show vault configuration.

=over

=item No required arguments

=item  Options

=over

=item transport_out: Output file to store the transport certificate (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vaultconfig_show
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('vaultconfig_show',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(transport_out all raw version)],
        [qw(unicode:0 bool:0 bool:0 unicode:0)],
    );
}



=item api_vaultcontainer_add_owner

Wrapper method for vaultcontainer_add_owner API

Add owners to a vault container.

=over

=item No required arguments

=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to add (arrayref of type unicode class Str)

=item group: groups to add (arrayref of type unicode class Str)

=item services: services to add (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vaultcontainer_add_owner
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('vaultcontainer_add_owner',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(service shared username all raw version no_members user group services)],
        [qw(unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_vaultcontainer_del

Wrapper method for vaultcontainer_del API

Delete a vault container.

=over

=item No required arguments

=item  Options

=over

=item continue: Continuous mode: Don't stop on errors. (type bool class Flag)

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vaultcontainer_del
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('vaultcontainer_del',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(continue service shared username version)],
        [qw(bool:0 unicode:0 bool:0 unicode:0 unicode:0)],
    );
}



=item api_vaultcontainer_remove_owner

Wrapper method for vaultcontainer_remove_owner API

Remove owners from a vault container.

=over

=item No required arguments

=item  Options

=over

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item user: users to remove (arrayref of type unicode class Str)

=item group: groups to remove (arrayref of type unicode class Str)

=item services: services to remove (arrayref of type unicode class Str)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vaultcontainer_remove_owner
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('vaultcontainer_remove_owner',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(service shared username all raw version no_members user group services)],
        [qw(unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0 unicode:1 unicode:1 unicode:1)],
    );
}



=item api_vaultcontainer_show

Wrapper method for vaultcontainer_show API

Display information about a vault container.

=over

=item No required arguments

=item  Options

=over

=item rights: Display the access rights of this entry (requires --all). See ipa man page for details. (type bool class Flag)

=item service: Service name of the service vault (type unicode class Str)

=item shared: Shared vault (type bool class Flag)

=item username: Username of the user vault (type unicode class Str)

=item all: Retrieve and print all attributes from the server. Affects command output. (type bool class Flag)

=item raw: Print entries as stored on the server. Only affects output format. (type bool class Flag)

=item version: Client version. Used to determine if server will accept request. (type unicode class Str)

=item no_members: Suppress processing of membership attributes. (type bool class Flag)

=item All options starting with C<__> are passed as options to C<Net::FreeIPA::RPC::rpc>.

=back

=back

=cut

sub api_vaultcontainer_show
{    
    my ($self, %opts) = @_;
    
    return $self->rpc_api('vaultcontainer_show',    
        [],
        [qw()],
        [qw()],
        \%opts,
        [qw(rights service shared username all raw version no_members)],
        [qw(bool:0 unicode:0 bool:0 unicode:0 bool:0 bool:0 unicode:0 bool:0)],
    );
}



=pod

=back

=cut

1;
