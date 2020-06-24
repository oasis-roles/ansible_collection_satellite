CONFIG
======

Config role to install Satellite configuration data:
* Create host collections
* Create lifecycle environments
* Create content and composite content views, publish if changed
* Create activation keys
* Create subnets
* Create domains
* Create hostgroups
* Create compute nodes - TODO
* Create compute resources - TODO
* Create Ansible roles to configure VMs - TODO
* Create hosts - TODO


Requirements
------------

Ansible 2.8 or higher
Satellite-ansible-collection
Red Hat Enterprise Linux 7 or equivalent
Valid Red Hat Subscription
A fully installed Satellite version 6.6 or higher
Enabled and sync'd repos


Role Variables
--------------

satellite_admin_username: - admin username
satellite_admin_password: - admin password
satellite_organization: - initial organization
satellite_location: - initial location
satellite_version: - version being installed i.e. "6.7"
satellite_fqdn: - server fqdn
satellite_server_url: - server url "https://{{ satellite_fqdn }}"
satellite_server_basearch: "x86_64"
satellite_prod_lifecycle_env: - lifecycle for production i.e. "Production"
satellite_domain: - domain i.e. example.com
satellite_mgmtsubnet: - subnet name
satellite_network: - network IP
satellite_mask: - network mask
satellite_dhcp_interface: - ethernet interface for the dhcp service
satellite_dhcp_fromip: - from IP address for dhcp range
satellite_dhcp_toip: - to IP address for dhcp range
satellite_dhcp_range: - quoted dhcp range
satellite_dhcp_gateway: - dhcp gateway IP
satellite_dhcp_nameservers: - dhcp nameserver IPs
satellite_dhcp_domain: - dhcp domain
satellite_partition_table_name: - "Kickstart default"
satellite_operatingsystem: - "RedHat 7.7"
# yamllint disable-line rule:line-length
satellite_kickstart_repository: "Red Hat Enterprise Linux 7 Server Kickstart x86_64 7.7"
satellite_host_collections: - list of host collections
satellite_content_views: - list of content views
satellite_composite_content_views: - list of composite content views
satellite_activation_keys: - list of activation keys
satellite_subnets: - list of subnets
satellite_domains: - list of domains
satellite_hostgroups: - list of hostgroups

Dependencies
------------

none

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: config }

License
-------

[GPLv3](LICENSE)

Author Information
------------------

Ron Sawyer <rsawyer@redhat.com>
Cory McKee <cmckee@redhat.com>
Greg Hellings <ghelling@redhat.com>
