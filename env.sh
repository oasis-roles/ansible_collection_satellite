#!/bin/bash

#export ANSIBLE_DEBUG=1

#1. SAT_ACCOUNT_ID is your Red Hat Account Number
export SAT_ACCOUNT_ID='0000000'

#2. Activation key is from access.redhat.com
#   To Create an activation key on access.redhat.com: 
#   https://access.redhat.com/articles/1378093
#export RHN_AK={Activation key that was created on access.redhat.com}

#3. RHN_ORG is from access.redhat.com
#   How to look up organization id on Red Hat's Customer Portal: 
#   https://access.redhat.com/articles/3047431
#export RHN_ORG={Activation Keys for Organization ID number}

#4. RHN_CONNECT variable is used to set the method of the satellite 
#   installation
#RHN_CONNECT={connected,disconnect, or master}
export RHN_CONNECT="disconnect"
#   - connected option is system is register to Red Hat's CDN and has access to
#      the internet
#   - disconnect optinon is when the system does not have access to the 
#     internet
#   - master option is the same has connected but exports the rpm content for a
#     disconnected satellite

#5. CONTENT_SOURCE is the path on where the offline rpm repository is stored
export CONTENT_SOURCE="192.168.122.1"

#6. FOREMAN_USER is to set the initial admin user for the satellite
export FOREMAN_USER="admin"

#7. FOREMAN_PASSWORD is set for the initial admin user password
export FOREMAN_PASSWORD="changemenow1!"

#8. FOREMAN_INITIAL_ORGANIZATION is set for initial Organization
export INITIAL_ORGANIZATION="MYORG"

#9. FOREMAN_INITIAL_LOCATION is set for initial location
export INITIAL_LOCATION="MYLOC"

#10. MANIFEST_UUID is the manifest uuid that is created on access.redhat.com
#    Manifest FAQ: https://access.redhat.com/articles/229083 
#export MANIFEST_UUID={CHANGEME-F4K3-UU1D-9h0i-1j2k3l4m5n60}

#11. MANIFEST_NAME is the name of the manifest to be used in a disconnected 
#    install and is located in the files dir of the content role
export MANIFEST_NAME="manifest_example.zip"
