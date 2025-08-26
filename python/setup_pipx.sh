#!/usr/bin/env bash

set -ex

brew install pipx
pipx upgrade-all
pipx ensurepath
