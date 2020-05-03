#!/bin/sh

# This file compiles and runs the golang test cases.
# Only intended to be run within a golang docker container.

# Move to the backend root directory containing cmd/, internal/, etc.
BASE_DIR=$(dirname $0)
cd "${BASE_DIR}/../.."

# Run all go tests for internal modules
CGO_ENABLED=0 go test ./internal/...
