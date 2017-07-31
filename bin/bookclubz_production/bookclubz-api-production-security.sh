#! bin/bash

ansible-playbook -i bookclubz_api_production security.yml --ask-vault-pass
