#!/usr/bin/env bash

set -e
set -x

mypy shellm
ruff shellm tests scripts
black shellm tests --check
isort shellm tests scripts --check-only
codespell
