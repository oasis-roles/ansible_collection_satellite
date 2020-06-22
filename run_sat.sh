#!/bin/bash
# run_sat.sh

if [[ -f /root/.sat_env.sh ]]
then
  source /root/.sat_env.sh
else
  source ./sat_env.sh
fi

ansible-playbook playbooks/sat_install.yml
