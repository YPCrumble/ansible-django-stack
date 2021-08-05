#! bin/bash

ansible-playbook -i guppy_staging site.yml -K --ask-vault-pass
