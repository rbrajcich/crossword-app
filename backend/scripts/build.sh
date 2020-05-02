#!/bin/sh

# Constants used by build process
EXECUTABLE_PATH=./bin/backend-server

# Move to the backend root directory containing cmd/, internal/, etc.
BASE_DIR=$(dirname $0)
cd "${BASE_DIR}/.."

# Build the backend-server executable
go build -o $EXECUTABLE_PATH ./cmd/main.go
