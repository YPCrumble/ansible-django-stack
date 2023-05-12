#! bin/bash

ansible-playbook -i imagefromhtml_production site.yml -K --ask-vault-pass
