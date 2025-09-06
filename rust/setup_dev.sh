#!/usr/bin/env bash

set -e

brew install rustup
rustup-init -y
rustup default stable
