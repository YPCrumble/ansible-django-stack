#! bin/bash

ansible-playbook -i bookclubz_jenkins site.yml -K --ask-vault-pass
