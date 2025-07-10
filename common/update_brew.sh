#!/usr/bin/env bash

set -e

brew update
brew upgrade
brew cleanup
brew list
brew leaves
