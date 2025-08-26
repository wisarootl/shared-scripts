#!/usr/bin/env bash

set -ex

if [[ "$OSTYPE" == "darwin"* ]]; then
      brew install shfmt shellcheck prettier
else
      sudo apt-get update
      sudo apt-get install -y shfmt shellcheck nodejs npm
      npm install -g prettier
fi
