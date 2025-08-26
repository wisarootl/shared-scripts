#!/usr/bin/env bash

set -ex

rm -rf .mypy_cache/
rm -rf .ruff_cache/
rm -rf .coverage
rm -rf coverage.xml
rm -rf __pycache__/
rm -rf .pytest_cache
rm -rf dist
find . -type d -name "__pycache__" -exec rm -rf {} +
find . -type f -name "*.pyc" -delete
