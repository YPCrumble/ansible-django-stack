#! bin/bash

ansible-playbook -i meezlanding_production site.yml -K --ask-vault-pass
