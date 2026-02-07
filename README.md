# Cookiecutter Code Template

A personal cookiecutter template for Python projects, powered by [uv](https://docs.astral.sh/uv/).

## Usage

```bash
uv tool install cookiecutter
cookiecutter gh:jasonlo/code-template
```

## Template Options

| Option            | Default                | Description                |
| ----------------- | ---------------------- | -------------------------- |
| `project_name`    | New Project            | Project display name       |
| `package_name`    | Formatted project name | PEP-compliant package name |
| `description`     | —                      | Short project description  |
| `author_name`     | Jason Lo               | Author name                |
| `author_email`    | `lcmjlo@gmail.com`     | Author email               |
| `github_username` | jasonlo                | GitHub username            |
| `license`         | MIT                    | Project license            |
| `python_version`  | 3.14                   | Python version             |

## What You Get

- `pyproject.toml` managed by uv (with build-backend)
- Package structure with an entry point (`hi` command)
- Dockerfile
- GitHub Actions workflow for Docker image publishing
- Dev dependencies: ruff, ty, pytest, ipykernel, pandas, numpy, altair

## License

MIT — see [LICENSE](LICENSE).
