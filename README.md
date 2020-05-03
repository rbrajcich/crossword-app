# crossword-app

## Getting Started

Clone the repository and work in the backend/ directory.  
Install these dependencies before moving on:
- Docker


### To run server unit tests:
```makefile
# Copy tests into a golang docker container and run it to execute them
$> ./run-tests.sh
```

### To build container and run it:
```makefile
# Build server and tag docker image as crossword-app-server:local-build
$> ./make-container.sh

# Start the server container running in background
$> docker run --name <some_name> --rm -d -p 8080:8080 crossword-app-server:local-build
```
Open a web browser and navigate to http://localhost:8080/Enter-Your-Name.
You should see a page saying "Hello, Your-Name!"

```makefile
# Stop the server container
$> docker stop <some_name>
```

## Backend Container Builds
Official Release Builds - https://hub.docker.com/r/rbrajcich/crossword-app-server/tags

Development Pipeline Builds - https://hub.docker.com/r/rbrajcich/crossword-app-server-dev/tags
