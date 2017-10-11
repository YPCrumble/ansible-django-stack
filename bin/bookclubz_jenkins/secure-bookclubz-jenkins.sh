#! bin/bash

ansible-playbook -i bookclubz_jenkins security.yml --ask-vault-pass
