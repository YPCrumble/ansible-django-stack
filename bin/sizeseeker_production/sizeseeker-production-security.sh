#! bin/bash

ansible-playbook -i sizeseeker_production security.yml --ask-vault-pass
