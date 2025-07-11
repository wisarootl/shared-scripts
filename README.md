# Shared Scripts

This repository contains reusable shell scripts intended for use with quick command runners like Makefile or Justfile.
It is designed to be added as a Git submodule in other projects.

## Quick Start

```bash
make setup_dev
make assert_setup_dev
```

## Requirements

- macOS
- Homebrew
- Zsh shell

## Usage

- Add as Submodule

```bash
git submodule add -b main https://github.com/wisarootl/shared-scripts.git scripts/shared
```

- Example Makefile Usage

```Makefile
setup_dev:
	chmod +x scripts/shared/node/setup_dev.sh
	./scripts/shared/node/setup_dev.sh
	exec zsh
```
