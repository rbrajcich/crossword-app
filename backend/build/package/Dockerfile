FROM golang:1.14-alpine

RUN mkdir /backend
WORKDIR /backend

# Copy source into build container
COPY go.* ./
COPY ./cmd ./cmd
COPY ./internal ./internal
COPY ./scripts ./scripts

# Build the source
RUN ./scripts/dockerfile/build.sh

# Copy exe out and get rid of the build dependencies
WORKDIR /
RUN mv /backend/bin/* .
RUN rm -rf /backend/

# Set up for execution of container as standalone server
EXPOSE 8080
CMD ["/backend-server"]