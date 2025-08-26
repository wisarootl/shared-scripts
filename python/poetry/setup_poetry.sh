#!/usr/bin/env bash

set -exx

pipx install poetry
pipx ensurepath
poetry config virtualenvs.in-project true
pipx inject poetry keyrings.google-artifactregistry-auth
