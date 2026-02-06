# Cookiecutter Code Template

A personal cookiecutter template for Python projects.

## Features

- **App types**: FastAPI or Streamlit
- **Docker**: Production-ready Dockerfile included
- **Devcontainer**: Optional pre-configured dev environment for VSCode
- **uv**: Fast Python dependency management
- **Ansible Vault**: Optional secrets management
- **VSCode Tasks**: Pre-configured `dev-run` and `docker-run` tasks

## Usage

```bash
pip install --user cookiecutter
cookiecutter gh:jasonlo/code-template
```

## Template Options

| Option              | Default             | Description                       |
| ------------------- | ------------------- | --------------------------------- |
| `project_name`      | New Project         | Project display name              |
| `author_name`       | Jason Lo            | Author name                       |
| `author_email`      | `lcmjlo@gmail.com`  | Author email                      |
| `description`       | —                   | Short project description         |
| `python_version`    | 3.12                | Python version for containers     |
| `app_type`          | fastapi             | `fastapi` or `streamlit`          |
| `app_port`          | 8080                | Application port                  |
| `use_devcontainer`  | false               | Include `.devcontainer/` setup    |
| `use_ansible_vault` | true                | Include Ansible Vault for secrets |

## License

MIT — see [LICENSE](LICENSE).
