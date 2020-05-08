#!/bin/bash

# This script can be directly run by a developer or in the CI pipeline.
# It will build a container with the server tests in it and then run it.

# Ensure working dir is backend root directory containing cmd/, internal/, etc.
BASE_DIR=$(dirname $0)
cd "${BASE_DIR}"

# Build the docker file which will compile the server executable; capture output
echo "Building docker container for tests..."
DOCKER_BUILD_OUTPUT=$(docker build -q --target unittest-img -f ./build/package/Dockerfile .)

# If the container build failed, then don't go any further
if [ -z $DOCKER_BUILD_OUTPUT ]; then
    echo "Failed to build container. Exiting."
    exit 1
fi

# Extract the image id from the docker build output
IMAGE_ID=$(echo $DOCKER_BUILD_OUTPUT | cut -d ":" -f2)
echo "Successfully built container with id ${IMAGE_ID}"
echo ""

# Run the image by its id
echo "Compiling and running tests in built container..."
exec docker run --rm $IMAGE_ID