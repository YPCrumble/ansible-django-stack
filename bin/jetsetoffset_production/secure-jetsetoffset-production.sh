#! bin/bash

ansible-playbook -i jetsetoffset_production security.yml --ask-vault-pass
