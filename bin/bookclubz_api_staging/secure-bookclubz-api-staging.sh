#! bin/bash

ansible-playbook -i bookclubz_api_staging security.yml --ask-vault-pass
