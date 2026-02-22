# CLAUDE.md

## Project Overview

This is a [cookiecutter](https://cookiecutter.readthedocs.io/) template for Python projects. Running cookiecutter against it generates a ready-to-use Python project managed by [uv](https://docs.astral.sh/uv/).

## Repository Structure

```
cookiecutter.json                        # Template variables and defaults
hooks/post_gen_project.sh               # Runs after generation: uv init + dev deps
tests/                                   # Tests for the template itself
{{cookiecutter.project_name}}/          # Template directory (cookiecutter renders this)
  Dockerfile
  compose.yml
  README.md
  LICENSE
  {{cookiecutter.package_name}}/        # Generated Python package
    __init__.py
    app.py
  .github/
    workflows/
      docker.yml                         # GitHub Actions: build & push Docker image
```

## Common Commands

**Test the template (generate a project):**
```bash
uv run cookiecutter .
```

**Run template tests:**
```bash
uv run pytest
```

**Install dependencies:**
```bash
uv sync
```

## Template Variables (`cookiecutter.json`)

| Variable | Default | Description |
|---|---|---|
| `project_name` | `new-project` | Project display name |
| `package_name` | derived from project_name | PEP-compliant package name |
| `description` | — | Short description |
| `author_name` | Jason Lo | Author name |
| `author_email` | lcmjlo@gmail.com | Author email |
| `github_username` | jasonlo | GitHub username |
| `license` | MIT | License |
| `python_version` | 3.14 | Python version |

## Key Conventions

- The template directory is literally named `{{cookiecutter.project_name}}` — that's cookiecutter syntax, not a placeholder to fill in
- `hooks/post_gen_project.sh` runs `uv init --bare --build-backend uv` then `uv add --dev` the dev dependencies after the project is generated
- `.github/workflows/*.md` files are Claude GitHub Actions workflows (not standard YAML workflows)
- `.claude/` is gitignored — don't commit it
