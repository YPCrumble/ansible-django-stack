#! bin/bash

ansible-playbook -i guppy_production site.yml -K --ask-vault-pass --tags=deploy
