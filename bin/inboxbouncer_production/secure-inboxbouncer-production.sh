#! bin/bash

ansible-playbook -i inboxbouncer_production security.yml --ask-vault-pass
