#! bin/bash

ansible-playbook -i jetsetoffset_staging site.yml -K --ask-vault-pass
