FROM ghcr.io/astral-sh/uv:python3.14-alpine

# Metadata labels <https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#labelling-container-images>
LABEL org.opencontainers.image.source="https://github.com/{{cookiecutter.github_username}}/{{cookiecutter.package_name}}"
LABEL org.opencontainers.image.description="{{cookiecutter.description}}"
LABEL org.opencontainers.image.licenses="{{cookiecutter.license}}"

WORKDIR /app

ENV UV_COMPILE_BYTECODE=1

# Install non-project dependencies
COPY pyproject.toml ./
RUN uv sync --no-dev --no-install-project

# Copy the application
COPY . .
RUN uv sync --no-dev

# Place the venv binaries on the PATH
ENV PATH="/app/.venv/bin:$PATH"

CMD ["{{cookiecutter.package_name}}"]
