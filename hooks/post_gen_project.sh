#!/bin/bash

# Project type specific post generation script
if command -v python3 &>/dev/null; then
    python3 app_type/{{cookiecutter.app_type}}/post_gen_project.py
elif command -v python &>/dev/null; then
    python app_type/{{cookiecutter.app_type}}/post_gen_project.py
else
    echo "Neither python3 nor python is installed."
    exit 1
fi

# clean up
rm -rf app_type

# Install Ansible
{% if cookiecutter.use_ansible_vault %}
# Write the Ansible Vault password to .vault_pass
echo {{cookiecutter.ansible_vault_password}} > ./secrets/.vault_pass
echo "[defaults]" > ansible.cfg
echo "vault_password_file = ./secrets/.vault_pass" >> ansible.cfg
{% endif %}