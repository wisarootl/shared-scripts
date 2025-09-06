#!/usr/bin/env bash

set -e

if ! grep -q "# >>> nvm initialize >>>" ~/.zshrc; then
      if [ -s ~/.zshrc ] && [ "$(tail -c 1 ~/.zshrc | wc -l)" -eq 0 ]; then
            echo "" >>~/.zshrc
      fi
      {
            echo ""
            echo "# >>> nvm initialize >>>"
            echo "export NVM_DIR=\"\$HOME/.nvm\""
            echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && \\. \"\$NVM_DIR/nvm.sh\"  # This loads nvm"
            echo "[ -s \"\$NVM_DIR/bash_completion\" ] && \\. \"\$NVM_DIR/bash_completion\"  # This loads nvm bash_completion"
            echo "# <<< nvm initialize <<<"
      } >>~/.zshrc
      echo "Added nvm auto-activation to ~/.zshrc"
else
      echo "nvm initialization already exists in ~/.zshrc"
fi
