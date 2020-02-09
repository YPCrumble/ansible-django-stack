#! bin/bash

ansible-playbook -i omnifollow_production security.yml --ask-vault-pass
