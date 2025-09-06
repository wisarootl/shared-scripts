#!/usr/bin/env bash

set -e

brew install pipx
pipx upgrade-all
pipx ensurepath
