# 2048-experiments

Welcome to AI 801 Group 1's project! This is an AI solver for the popular web-based game 2048.

The primary work is in the notebook named [2048-group1-project.ipynb](2048-group1-project.ipynb). 

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
`docker run -p 2048:2048 -it group-1-2048 /src/start-jupyter-lab.sh`
### After it's running
Then visit http://localhost:2048 in a browser.

### Getting a shell for development
#### If you're on *nix and have *make* installed:
`make shell`
#### Otherwise
`docker run -p 2048:2048 -v $(pwd):/src -it group-1-2048`

## Running without Docker

This notebook requires python 3.x (tested with 3.10.12).

First, install the dependencies from the command line.
`# pip install -r ./requirements.txt`

Then you can run the notebook.
`# jupyter lab`

## Running a demo

Run all cells in `2048-group1-project.ipynb` for a demo!
