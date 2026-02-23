#!/bin/bash

uv init \
    --description  "{{cookiecutter.description}}" \
    --build-backend uv

# add dev dependencies to pyproject.toml
uv add --dev {{cookiecutter._dev_dependencies}}
