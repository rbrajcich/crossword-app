#!/bin/sh

# Move to the backend root directory containing cmd/, internal/, etc.
BASE_DIR=$(dirname $0)
cd "${BASE_DIR}/.."

# Run all go tests for internal modules
go test ./internal/...
