#!/bin/sh

# This file builds the actual server executable.
# Only intended to be run within a golang docker container.

# Constants used by build process
EXECUTABLE_PATH=./bin/backend-server

# Move to the backend root directory containing cmd/, internal/, etc.
BASE_DIR=$(dirname $0)
cd "${BASE_DIR}/../.."

# Build the backend-server executable
go build -o $EXECUTABLE_PATH ./cmd/main.go
