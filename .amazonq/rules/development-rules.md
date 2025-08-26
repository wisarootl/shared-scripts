# Shared Scripts Development Rules

## Code Quality

- Run `make lint` at the end of any code changes to ensure code quality

## Discussion Mode

- **Discussion Mode**: Prefix prompt with "D:" to enter read-only discussion mode
- In discussion mode: NO code updates, only read files and provide analysis/suggestions
- Always start responses with "[Discussion Mode]" header when in discussion mode
- Never exit discussion mode automatically - only when user uses "XD:" prefix
- If user seems to want code changes, remind them to use "XD:" to exit discussion mode
- **Exit Discussion**: Use "XD:" prefix to exit discussion mode and resume normal operations

## Project Structure

- Follow the existing module organization by language/tool (`node/`, `rust/`, `python/`, `common/`, `shell/`)
- Place setup scripts as `setup_dev.sh` and validation scripts as `assert_setup_dev.sh`
- Maintain separation between different tool ecosystems
