#! bin/bash

ansible-playbook -i calendar_production site.yml -K --ask-vault-pass --tags=deploy
