setup_dev:
	chmod +x common/update_brew.sh
	./common/update_brew.sh

	chmod +x python/setup_pipx.sh
	./python/setup_pipx.sh

	pipx install pre-commit
	pre-commit install

	chmod +x shell/install_shell_deps.sh
	./shell/install_shell_deps.sh

assert_setup_dev:
	pre-commit run -a

lint:
	find . -type f -name "*.sh" -exec shfmt -w -i 6 {} +
	find . -type f -name "*.sh" -exec shellcheck {} +
	prettier --write "**/*.{json,yaml,yml,md}"
