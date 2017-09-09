#! bin/bash

ansible-playbook -i sizeseeker_production site.yml -K --ask-vault-pass --tags=deploy
