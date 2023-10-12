#! bin/bash

ansible-playbook -i imagefromhtml_production security.yml --ask-vault-pass
