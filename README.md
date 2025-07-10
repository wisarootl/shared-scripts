# Shared Scripts

Quick-share command line scripts for use in quick command runner like Makefile or Justfile.

## Quick Start

```bash
make setup_dev    # Install all dependencies and setup development environment
make assert_setup_dev  # Validate setup
```

## Requirements

- macOS
- Homebrew
- Zsh shell

## Usage

```bash
git submodule add -b main https://github.com/wisarootl/shared-scripts.git scripts/shared
```

```Makefile
setup_dev:
	chmod +x scripts/shared/node/setup_dev.sh
	./scripts/shared/node/setup_dev.sh
	exec zsh
```
