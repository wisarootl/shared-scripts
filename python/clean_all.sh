#!/usr/bin/env bash

set -e

chmod +x "$(dirname "$0")/clean.sh"
"$(dirname "$0")/clean.sh"

chmod +x "$(dirname "$0")/clean_venv.sh"
"$(dirname "$0")/clean_venv.sh"

chmod +x "$(dirname "$0")/../common/clean_cache_env.sh"
"$(dirname "$0")/../common/clean_cache_env.sh"
