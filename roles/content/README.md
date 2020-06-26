Content
===========

This role will upload the manifest and enable and sync the Red Hat repositories

Requirements
------------

Ansible 2.8 or higher

Red Hat Enterprise Linux 7 or equivalent

Valid Red Hat Subscriptions

Role Variables
--------------
```
satellite_admin_username: "{{ lookup('env', 'SATELLITE_USERNAME') }}"
satellite_admin_password: "{{ lookup('env', 'SATELLITE_PASSWORD') }}"
satellite_organization: "{{ lookup('env', 'SATELLITE_ORGANIZATION') }}"
satellite_location: "{{ lookup('env', 'SATELLITE_LOCATION') }}"
satellite_server_url: "https://{{ ansible_fqdn }}"
satellite_rhn_user: "{{ lookup('env', 'SATELLITE_RHN_USER') }}"
satellite_rhn_password: "{{ lookup('env', 'SATELLITE_RHN_PASSWORD') }}"
satellite_rhn_connect: "{{ lookup('env', 'SATELLITE_RHN_CONNECT') }}"
satellite_manifest_src: "{{ lookup('env','SATELLITE_MANIFEST_NAME') }}"
satellite_manifest_dest: "/opt/satellite_manifest.zip"
satellite_version: "{{ lookup('env', 'SATELLITE_VERSION') | mandatory }}"
satellite_server_basearch: "x86_64"
satellite_manifest_uuid: "{{ lookup('env', 'SATELLITE_MANIFEST_UUID') }}"
# yamllint disable-line rule:line-length
satellite_content_source: "{{ lookup('env', 'SATELLITE_CONTENT_SOURCE'| default('https://cdn.redhat.com') }}"

Example of enable repo
satellite_rhel7_product:
  - name: "Red Hat Enterprise Linux 7 Server (RPMs)"
    label: rhel-7-server-rpms
    repos:
      - releasever: "7.7"
        basearch: "{{ satellite_server_basearch }}"

```


Dependencies
------------
From Ansible Galaxy
- oasis_roles.system
- theforeman.foreman

Example Playbooks
-----------------
```
---
- name: Satellite
  hosts: satellite
  become: true
  roles:
    - role: content
```

License
-------

[GPLv3](LICENSE)

Author Information
------------------
Ron Sawyer <rsawyer@redhat.com>
Cory McKee <cmckee@redhat.com>
Greg Hellings <ghelling@redhat.com>
