#!/usr/bin/env bash

set -ex

brew install rustup
rustup-init -y
rustup default stable
