# crossword-app
[![Test, Build, Release](https://github.com/rbrajcich/crossword-app/workflows/Test,%20Build,%20Release/badge.svg)](https://github.com/rbrajcich/crossword-app/actions?query=workflow%3A%22Test%2C+Build%2C+Release%22+branch%3Amaster)&nbsp;&nbsp;&nbsp;&nbsp;
[![Latest Backend Image](https://img.shields.io/docker/v/rbrajcich/crossword-app-server?color=%230db7ed&label=Latest%20Backend%20Image&logo=Docker)](https://hub.docker.com/r/rbrajcich/crossword-app-server/tags)&nbsp;&nbsp;&nbsp;&nbsp;
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
***
## Getting Started

Install these dependencies before moving on:
- Docker

### Download and Run the Backend Server

See Most Recent Releases -  https://github.com/rbrajcich/crossword-app/releases  
Backend Container Release Builds - https://hub.docker.com/r/rbrajcich/crossword-app-server/tags

```bash
# Download server image for example run
$> docker pull rbrajcich/crossword-app-server:latest

# Start the server container running in background
$> docker run --name <some_name> --rm -d -p 8080:8080 rbrajcich/crossword-app-server:latest
```
Open a web browser and navigate to http://localhost:8080/Enter-Your-Name.
You should see a page saying "Hello, Your-Name!"

```bash
# Stop the server container
$> docker stop <some_name>
```

## Developer Info
Please see the wiki to get started: https://github.com/rbrajcich/crossword-app/wiki