#! bin/bash

ansible-playbook -i bookclubz_api_staging site.yml -K --ask-vault-pass
