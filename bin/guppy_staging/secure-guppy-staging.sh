#! bin/bash

ansible-playbook -i guppy_staging security.yml --ask-vault-pass
