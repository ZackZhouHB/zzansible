#!/bin/bash

# ensure ansible and ssh and ssh key is ready
# check my notes, here might need some extra tasks
# install aws cli
# asw configure with KEY ID and key secret to connect to S3

# Run playbook to backup all nas config files to local
ansible-playbook nasbkupg.yml

# Reboot nas after upgrade
ansible newnas -a "reboot"

# Upload the folder to S3
aws s3 cp --recursive /root/nasbk s3://zackzs3001/nasbk/

# Wait 2m for nas reboot after upgrade
sleep 2m

# Output nas version
ansible-playbook nasversion.yml
