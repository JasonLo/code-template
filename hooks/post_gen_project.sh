#!/bin/bash

uv init --bare --build-backend uv --name {{cookiecutter.project_name}}

# add build-backend configuration to pyproject.toml
if ! grep -qF "[tool.uv.build-backend]" pyproject.toml; then
    cat <<EOL >> pyproject.toml

[tool.uv.build-backend]
module-root = "."

[project.scripts]
{{cookiecutter.package_name}} = "{{cookiecutter.package_name}}.app:main"
EOL
fi

# add dev dependencies to pyproject.toml
uv add --dev {{cookiecutter._dev_dependencies}}
