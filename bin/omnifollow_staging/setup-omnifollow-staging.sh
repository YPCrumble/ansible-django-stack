#! bin/bash

ansible-playbook -i omnifollow_staging site.yml -K --ask-vault-pass
