#!/usr/bin/env bash

set -e

echo "Python: $(which python)"
echo "Pip: $(which pip)"
echo "Poetry: $(which poetry)"
FAILED=0

if ! test "$(which python)" = "$(pwd)/.venv/bin/python"; then
      echo "❌ Python: ERROR - not using project .venv"
      FAILED=1
else
      echo "✅ Python: OK"
fi
if ! test "$(which pip)" = "$(pwd)/.venv/bin/pip"; then
      echo "❌ Pip: ERROR - not using project .venv"
      FAILED=1
else
      echo "✅ Pip: OK"
fi
if ! test "$(which poetry)" = "$HOME/.local/bin/poetry"; then
      echo "❌ Poetry: ERROR - not in ~/.local/bin"
      FAILED=1
else
      echo "✅ Poetry: OK"
fi
if [ $FAILED -eq 1 ]; then
      echo "❌ Setup assertion failed."
      exit 1
else
      echo "✅ Setup assertion passed."
fi
