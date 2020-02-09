#! bin/bash

ansible-playbook -i omnifollow_production site.yml -K --ask-vault-pass --tags=deploy
