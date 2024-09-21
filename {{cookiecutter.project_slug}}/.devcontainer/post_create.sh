#!/bin/bash

set -e

config_git() {
    echo "Configuring Git..."
    git config --global --add safe.directory /workspace/{{cookiecutter.package_name}}
    git config --global user.name "{{cookiecutter.author_name}}"
    git config --global user.email "{{cookiecutter.author_email}}"
    git config --global core.eol lf
    git config --global core.filemode false
    git config --global credential.helper store
    echo "Git configured."
}

maybe_init_git() {
    git config --global --add safe.directory $(pwd)
    if [ ! -d .git ]; then
        echo "Initializing a new Git repository..."
        git init -b main
        git add .
        git commit -m "Initial commit"
        echo "Git repository initialized."
    else
        echo "Git repository already initialized."
    fi
}

maybe_init_uv() {
    # Create the virtual environment if it doesn't exist
    if [ ! -d .venv ]; then
        echo "Creating the virtual environment..."
        uv venv
        echo "Virtual environment created."
    else
        echo "Virtual environment already exists."
    fi
    
    # Initialize the uv project if it doesn't exist
    if [ ! -f pyproject.toml ]; then
        echo "Initializing a uv project..."
        uv init
        uv add -r requirements.txt
        echo "uv project initialized."
    else
        echo "uv project already initialized."
    fi
}

config_git
maybe_init_git
maybe_init_uv

echo "Post-create script complete."
