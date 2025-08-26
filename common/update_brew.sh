#!/usr/bin/env bash

set -ex

brew update
brew upgrade
brew cleanup
brew list
brew leaves
