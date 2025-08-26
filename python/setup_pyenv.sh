#!/usr/bin/env bash

set -ex

brew install pyenv --quiet
if [ ! -d "$(pyenv root)/plugins/pyenv-update" ]; then
      git clone https://github.com/pyenv/pyenv-update.git "$(pyenv root)/plugins/pyenv-update"
fi
pyenv update

chmod +x "$(dirname "$0")/setup_pyenv_zshrc.sh"
"$(dirname "$0")/setup_pyenv_zshrc.sh"

LATEST_PYTHON_VERSION=$(
      pyenv install --list |
            grep -E '^\s*[0-9]+\.[0-9]+\.[0-9]+$' |
            tail -1 |
            xargs
)
pyenv install "$LATEST_PYTHON_VERSION" --skip-existing
pyenv global "$LATEST_PYTHON_VERSION"
