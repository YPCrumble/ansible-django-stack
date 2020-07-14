# Ansible Role: htpasswd

[![Build Status](https://travis-ci.org/geerlingguy/ansible-role-htpasswd.svg?branch=master)](https://travis-ci.org/geerlingguy/ansible-role-htpasswd)

An Ansible Role that installs `htpasswd` and allows easy configuration of `htpasswd` authentication files and credentials (used for HTTP basic authentication with webservers like Apache and Nginx) on Linux-based servers.

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

    htpasswd_credentials:
      - path: /etc/nginx/passwdfile
        name: johndoe
        password: 'supersecure'
        owner: root
        group: www-data
        mode: 'u+rw,g+r'
    
      - path: /etc/apache2/passwdfile
        name: janedoe
        password: 'supersecure'
        owner: root
        group: www-data
        mode: 'u+rw,g+r'

A list of credentials to be generated (or removed) in the respective files defined by the `path` key for each dict. All parameters except `mode` are required (`mode` defaults to `'u+rw,g+r'` (`0640` in octal)).

## Dependencies

None.

## Example Playbooks

### Apache Example

    ---
    - hosts: apache-server
    
      vars:
        htpasswd_credentials:
          - path: /etc/apache-passwdfile
            name: johndoe
            password: 'supersecure'
            owner: root
            group: www-data
            mode: 'u+rw,g+r'
    
        apache_remove_default_vhost: True
        apache_vhosts:
          - listen: "80"
            servername: "htpassword.test"
            documentroot: "/var/www/html"
            extra_parameters: |
                  <Directory "/var/www/html">
                      AuthType Basic
                      AuthName "Apache with basic auth."
                      AuthUserFile /etc/apache-passwdfile
                      Require valid-user
                  </Directory>
    
      pre_tasks:
        - name: Update apt cache.
          apt: update_cache=yes cache_valid_time=600
          when: ansible_os_family == 'Debian'
    
      roles:
        - geerlingguy.apache
        - geerlingguy.htpasswd


### Nginx Example

    ---
    - hosts: nginx-server
    
      vars:
        htpasswd_credentials:
          - path: /etc/nginx/passwdfile
            name: johndoe
            password: 'supersecure'
            owner: root
            group: www-data
            mode: 'u+rw,g+r'
    
        nginx_remove_default_vhost: True
        nginx_vhosts:
          - listen: "80"
            server_name: "htpassword.test"
            root: "/var/www/html"
            index: "index.html index.html index.nginx-debian.html"
            filename: "htpassword.test.conf"
            extra_parameters: |
                  location / {
                      auth_basic           "Nginx with basic auth.";
                      auth_basic_user_file /etc/nginx/passwdfile;
                  }
    
      pre_tasks:
        - name: Update apt cache.
          apt: update_cache=yes cache_valid_time=600
          when: ansible_os_family == 'Debian'
    
      roles:
        - geerlingguy.apache
        - geerlingguy.htpasswd

## License

MIT / BSD

## Author Information

This role was created in 2018 by [Jeff Geerling](https://www.jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
