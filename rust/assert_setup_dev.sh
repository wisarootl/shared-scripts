#!/usr/bin/env bash

set -e

echo "Rust: $(which rustc)"
echo "Cargo: $(which cargo)"
echo "Rustup: $(which rustup)"
echo "Rustdoc: $(which rustdoc)"
FAILED=0

if ! test "$(which rustc)" = "$HOME/.cargo/bin/rustc"; then
      echo "❌ Rust: ERROR - not in ~/.cargo/bin"
      FAILED=1
else
      echo "✅ Rust: OK"
fi
if ! test "$(which cargo)" = "$HOME/.cargo/bin/cargo"; then
      echo "❌ Cargo: ERROR - not in ~/.cargo/bin"
      FAILED=1
else
      echo "✅ Cargo: OK"
fi
if ! test "$(which rustup)" = "/opt/homebrew/bin/rustup"; then
      echo "❌ Rustup: ERROR - not in /opt/homebrew/bin"
      FAILED=1
else
      echo "✅ Rustup: OK"
fi
if ! test "$(which rustdoc)" = "$HOME/.cargo/bin/rustdoc"; then
      echo "❌ Rustdoc: ERROR - not in ~/.cargo/bin"
      FAILED=1
else
      echo "✅ Rustdoc: OK"
fi
if [ $FAILED -eq 1 ]; then
      echo "❌ Setup assertion failed."
      exit 1
else
      echo "✅ Setup assertion passed."
fi
