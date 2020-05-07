#!/bin/bash

# Push built backend container tags to docker hub
echo $DOCKERHUB_TOKEN | docker login -u rbrajcich --password-stdin
docker push rbrajcich/crossword-app-server