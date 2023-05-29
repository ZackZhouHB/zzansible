#!/bin/bash

sudo apt update
sudo apt install git awscli ansible -y
sudo apt install python3-boto3 python3-boto

## ssh-keygen
## cat~/.ssh/id-rsa.pub
## copy to github sshkey

## git clone from my git
## git checkout aws-stack-part1
## git config --global user.name zack
## git config --global user.email zack@gmail.com
## git pull

## run ansible-playbook sites.yml

## go ec2 create ami
## create controller vm within vpc using ami
## git push first for all changes made 
## run ansible-playbook site.yml

## push to origin
