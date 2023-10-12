#! bin/bash

ansible-playbook -i calendar_production security.yml --ask-vault-pass
