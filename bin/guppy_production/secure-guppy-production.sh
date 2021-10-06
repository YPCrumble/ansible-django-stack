#! bin/bash

ansible-playbook -i guppy_production security.yml --ask-vault-pass
