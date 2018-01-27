#! bin/bash

ansible-playbook -i jetsetoffset_staging security.yml --ask-vault-pass
