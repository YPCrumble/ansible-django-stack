#! bin/bash

ansible-playbook -i inboxbouncer_production site.yml -K --ask-vault-pass
