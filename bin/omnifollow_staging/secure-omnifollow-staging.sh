#! bin/bash

ansible-playbook -i omnifollow_staging security.yml --ask-vault-pass
