#!/bin/sh -e
set -x

ruff shellm tests scripts --fix
black shellm tests scripts
isort shellm tests scripts
codespell --write-changes
