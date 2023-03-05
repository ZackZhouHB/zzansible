#!/bin/bash

# ensure ansible and ssh and ssh key is ready
# check my notes, here might need some extra tasks

# run playbook to backup all nas config files to local
ansible-playbook naslocalbk.yml

# here might need some extra step to install aws cli and aws config for key 

# Upload the folder to S3
aws s3 cp --recursive /root/nasbk s3://zackzs3001/nasbk/
