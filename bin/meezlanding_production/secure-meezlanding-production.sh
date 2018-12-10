#! bin/bash

ansible-playbook -i meezlanding_production security.yml --ask-vault-pass
