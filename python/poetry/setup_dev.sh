#!/usr/bin/env bash

set -exx

while [[ $# -gt 0 ]]; do
      case $1 in
      --colima-docker)
            COLIMA_DOCKER=true
            shift
            ;;
      --python-version)
            PYTHON_VERSION="$2"
            shift
            shift
            ;;
      --just)
            JUST=true
            shift
            ;;
      *)
            echo "Unknown option $1"
            exit 1
            ;;
      esac
done

chmod +x "$(dirname "$0")/../clean.sh"
"$(dirname "$0")/../clean.sh"

chmod +x "$(dirname "$0")/../clean_venv.sh"
"$(dirname "$0")/../clean_venv.sh"

chmod +x "$(dirname "$0")/../../common/update_brew.sh"
"$(dirname "$0")/../../common/update_brew.sh"

chmod +x "$(dirname "$0")/../setup_pyenv.sh"
"$(dirname "$0")/../setup_pyenv.sh"

chmod +x "$(dirname "$0")/../setup_pipx.sh"
"$(dirname "$0")/../setup_pipx.sh"

chmod +x "$(dirname "$0")/setup_poetry.sh"
"$(dirname "$0")/setup_poetry.sh"

if [[ "$COLIMA_DOCKER" == "true" ]]; then
      echo "Ensure colima and docker are installed."
      brew install colima docker --quiet
fi

if [[ "$JUST" == "true" ]]; then
      echo "Ensure just are installed."
      brew install just --quiet
fi

echo "Setup local python to ${PYTHON_VERSION}"
pyenv install "${PYTHON_VERSION}" --skip-existing

echo "Setup .venv"
poetry env use "python${PYTHON_VERSION}"

chmod +x "$(dirname "$0")/../setup_venv_zshrc.sh"
"$(dirname "$0")/../setup_venv_zshrc.sh"

poetry install
poetry run pre-commit install
