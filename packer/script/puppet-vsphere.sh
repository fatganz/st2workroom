#!/usr/bin/env bash

export FACTER_role=st2
export FACTER_datacenter=vsphere
export environment=current_working_directory

echo "role=${FACTER_role}" > /etc/facter/facts.d/role.txt

cd /opt/puppet
script/bootstrap-os
script/puppet-apply

echo "datacenter=${FACTER_datacenter}" > /etc/facter/facts.d/datacenter.txt
