#!/usr/bin/env bash

set -ex

pipx install poetry
pipx ensurepath
poetry config virtualenvs.in-project true
pipx inject poetry keyrings.google-artifactregistry-auth
