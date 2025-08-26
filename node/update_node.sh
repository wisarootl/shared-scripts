#!/usr/bin/env bash

set -ex

chmod +x "$(dirname "$0")/load_nvm.sh"
source "$(dirname "$0")/load_nvm.sh"

nvm install --lts
npm update
