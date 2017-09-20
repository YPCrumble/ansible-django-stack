#! bin/bash

ansible-playbook -i itsreally.cool_production site.yml -K --ask-vault-pass --tags=deploy
