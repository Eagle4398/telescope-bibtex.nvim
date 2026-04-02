#!/usr/bin/env bash

# Navigate to the root of the project to ensure tests run from the correct working directory
PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$PROJECT_ROOT" || exit 1

DEBUG_FLAG=""
for arg in "$@"; do
  if [ "$arg" = "--debug" ]; then
    export BIBTEX_DEBUG=1
  fi
done

echo "Running telescope-bibtex tests via Plenary..."
nvim --headless -c "PlenaryBustedDirectory tests/"
