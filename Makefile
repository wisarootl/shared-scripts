hi:
	chmod +x common/update_brew.sh
	./common/update_brew.sh

	chmod +x python/setup_pipx.sh
	./python/setup_pipx.sh

	pipx install pre-commit
	pre-commit install

	brew install shfmt
	brew install shellcheck

lint:
	find . -type f -name "*.sh" -exec shfmt -w -i 6 {} +
	find . -type f -name "*.sh" -exec shellcheck {} +
