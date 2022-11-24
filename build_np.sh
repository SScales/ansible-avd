#!/bin/bash
# check if in correct directory
ls -la playbooks/ | grep anz-fabric-deploy.yml > /dev/null
if [[ $? -eq 0 ]]
then
    #echo "correct directory"
    ansible-playbook playbooks/anz-fabric-deploy.yml --tags build
else
    echo "Please run playbook from base directory"
    echo "e.g. /var/anz/arista/arista-ansible-avd-non-prod/"
fi
