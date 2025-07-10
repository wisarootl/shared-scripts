#!/usr/bin/env bash

set -e

chmod +x "$(dirname "$0")/setup_zshrc_nvm.sh"
"$(dirname "$0")/setup_zshrc_nvm.sh"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

chmod +x "$(dirname "$0")/load_nvm.sh"
source "$(dirname "$0")/load_nvm.sh"

nvm install --lts
npm install

brew install pre-commit
pre-commit install
