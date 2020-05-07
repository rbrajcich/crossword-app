#!/bin/bash

# Pull dev build for this CI job and prepare docker tags for publishing
# Publish latest, full patch version, latest minor version release, and latest major version release
PATCH_TAG=$1
MINOR_TAG=${PATCH_TAG%.*}
MAJOR_TAG=${MINOR_TAG%.*}
docker pull rbrajcich/crossword-app-server-dev:job-$GITHUB_RUN_ID
docker tag rbrajcich/crossword-app-server-dev:job-$GITHUB_RUN_ID rbrajcich/crossword-app-server:latest
docker tag rbrajcich/crossword-app-server-dev:job-$GITHUB_RUN_ID rbrajcich/crossword-app-server:$PATCH_TAG
docker tag rbrajcich/crossword-app-server-dev:job-$GITHUB_RUN_ID rbrajcich/crossword-app-server:$MINOR_TAG
docker tag rbrajcich/crossword-app-server-dev:job-$GITHUB_RUN_ID rbrajcich/crossword-app-server:$MAJOR_TAG
