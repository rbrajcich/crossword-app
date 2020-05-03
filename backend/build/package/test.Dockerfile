FROM golang:1.14-alpine

RUN mkdir /backend
WORKDIR /backend

# Copy source into build container
COPY go.* ./
COPY ./cmd ./cmd
COPY ./internal ./internal
COPY ./scripts ./scripts

# This container will compile/run the go tests as soon as it's executed
CMD sh /backend/scripts/dockerfile/runtests.sh