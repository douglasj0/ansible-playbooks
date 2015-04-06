#!/bin/bash

# NOTE:  Requirements:
# - add ip address of system(s) to hosts file
# - install openssh server:  sudo apt-get install openssh-server
# - put ssh authorized_keys on client(s)

read -p "Enter user to connect as: " USER
ANSIBLE_NOCOWS=1 ansible-playbook site.yml --inventory=hosts --user=${USER} --ask-sudo-pass
