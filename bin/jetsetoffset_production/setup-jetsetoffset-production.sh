#! bin/bash

ansible-playbook -i jetsetoffset_production site.yml -K --ask-vault-pass
