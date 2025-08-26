#!/usr/bin/env bash

set -ex

if ! grep -q "# >>> .venv initialize >>>" ~/.zshrc; then
      if [ -s ~/.zshrc ] && [ "$(tail -c 1 ~/.zshrc | wc -l)" -eq 0 ]; then
            echo "" >>~/.zshrc
      fi
      {
            echo ""
            echo "# >>> .venv initialize >>>"
            echo "if [ -f \".venv/bin/activate\" ]; then"
            echo "    source .venv/bin/activate"
            echo "fi"
            echo "# <<< .venv initialize <<<"
      } >>~/.zshrc
      echo "Added .venv auto-activation to ~/.zshrc"
else
      echo ".venv initialization already exists in ~/.zshrc"
fi
