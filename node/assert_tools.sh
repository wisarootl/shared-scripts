#!/usr/bin/env bash

set -e

echo "Node: $(which node)"
echo "NPM: $(which npm)"

FAILED=0

# Check NVM using zsh (run only once)
NVM_CHECK=$(zsh -i -c 'type nvm' 2>&1)
NVM_STATUS=$?
echo "NVM: $NVM_CHECK"

if ! command -v node >/dev/null; then
      echo "❌ Node: ERROR - not installed or not in PATH"
      FAILED=1
else
      echo "✅ Node: OK"
fi

if ! command -v npm >/dev/null; then
      echo "❌ NPM: ERROR - not installed or not in PATH"
      FAILED=1
else
      echo "✅ NPM: OK"
fi

if [ $NVM_STATUS -eq 0 ]; then
      echo "✅ NVM: OK"
else
      echo "❌ NVM: ERROR - not properly installed or configured"
      FAILED=1
fi

if [ $FAILED -eq 1 ]; then
      echo "❌ Node tools assertion failed."
      exit 1
else
      echo "✅ Node tools assertion passed."
fi
