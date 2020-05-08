#!/bin/bash

# This script can be directly run by a developer or in the CI pipeline.
# It will build the server executable in a container and tag the resulting image:
DOCKER_IMAGE=crossword-app-server:local-build

# Ensure working dir is backend root directory containing cmd/, internal/, etc.
BASE_DIR=$(dirname $0)
cd "${BASE_DIR}"

# Build the docker file which will compile the server executable
docker build -f ./build/package/Dockerfile --target prod-img --tag $DOCKER_IMAGE .