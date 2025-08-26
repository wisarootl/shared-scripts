#!/usr/bin/env bash

set -ex

echo "Asserting setup_dev..."

chmod +x "$(dirname "$0")/assert_python_poetry.sh"
"$(dirname "$0")/assert_python_poetry.sh"

make lint test 2>/dev/null || just lint test 2>/dev/null || {
      echo "❌ Error: Neither Makefile nor justfile found with lint and test targets"
      exit 1
}
