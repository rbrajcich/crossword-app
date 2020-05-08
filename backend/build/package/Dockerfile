# Stage 1 - Container with src code/tests in it
FROM golang:1.14-alpine AS unittest-img

RUN mkdir /backend
WORKDIR /backend

# Copy source into build container
COPY go.* ./
COPY ./cmd ./cmd
COPY ./internal ./internal
COPY ./scripts ./scripts

# Expose test running script as entrypoint
CMD sh /backend/scripts/dockerfile/runtests.sh


# Stage 2 - Container that builds executable
FROM unittest-img AS builder-img

# Build the source
RUN ./scripts/dockerfile/build.sh


# Stage 3 - Lightweight production container with just executable
FROM alpine:3.11 AS prod-img

# Set up for execution of container as standalone server
COPY --from=builder-img /backend/bin/backend-server /
EXPOSE 8080
CMD ["/backend-server"]