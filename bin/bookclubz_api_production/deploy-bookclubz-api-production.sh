#! bin/bash

ansible-playbook -i bookclubz_api_production site.yml -K --ask-vault-pass --tags=deploy
