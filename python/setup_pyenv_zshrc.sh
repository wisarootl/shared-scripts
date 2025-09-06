#!/usr/bin/env bash

set -e

if ! grep -q "# >>> pyenv initialize >>>" ~/.zshrc; then
      if [ -s ~/.zshrc ] && [ "$(tail -c 1 ~/.zshrc | wc -l)" -eq 0 ]; then
            echo "" >>~/.zshrc
      fi
      {
            echo ""
            echo "# >>> pyenv initialize >>>"
            echo "export PYENV_ROOT=\"\$HOME/.pyenv\""
            echo "export PATH=\"\$PYENV_ROOT/bin:\$PATH\""
            echo "eval \"\$(pyenv init --path)\""
            echo "eval \"\$(pyenv init -)\""
            echo "# <<< pyenv initialize <<<"
      } >>~/.zshrc
      echo "Added pyenv initialization to ~/.zshrc"
else
      echo "pyenv initialization already exists in ~/.zshrc"
fi
