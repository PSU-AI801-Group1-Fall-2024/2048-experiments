# 2048-experiments

## Building and running with Docker

### Building
#### If you're on *nix and have *make* installed:
`make`

#### Otherwise
`docker build -t group-1-2048 .`

### Running
#### If you're on *nix and have *make* installed:
`make up`
#### Otherwise
`docker run -p 2048:2048 -v $(pwd):/src -it group-1-2048 /src/start-jupyter-lab.sh`
### After it's running
Then visit http://localhost:2048 in a browser.

## Getting a shell
#### If you're on *nix and have *make* installed:
`make shell`
#### Otherwise
`docker run -p 2048:2048 -v $(pwd):/src -it group-1-2048`
