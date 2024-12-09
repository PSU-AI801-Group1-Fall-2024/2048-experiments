# 2048-experiments

Welcome to AI 801 Group 1's project! This is an AI solver for the popular web-based game 2048.

The primary work is in the notebook named [2048-group1-project.ipynb](2048-group1-project.ipynb). 

## Building and running with Docker
The prefered way to run the 2048 experiments is in Docker. Instructions below are provided for building and running
the project on *nix variants (like Linux and Mac) when they do or do not have `make` installed. Windows commands are
also listed when they differ, but require powershell. 

All commands here expose port 2048, but you can adjust this to your liking by modifying the `docker run` commands 
either in the `Makefile` or with directly-issued shell commands

For customization to your local envinment, please see the `Dockerfile`, `Makefile`, and `start-jupyter-lab.sh`

### Building
#### If you're on *nix and have *make* installed
`make`

#### *nix without make or Windows
`docker build -t group-1-2048 .`

### Running
#### If you're on *nix and have *make* installed
`make up`
#### *nix without make or Windows
`docker run -p 2048:2048 -it group-1-2048 /src/start-jupyter-lab.sh`
### After it's running
Then visit http://localhost:2048 in a browser.

### Getting a shell for development
This process mounts the repo from your host into `/src` so you can develop and preserve your changes to disk.
#### If you're on *nix and have *make* installed
`make shell`
#### *nix without make
`docker run -p 2048:2048 --entrypoint /bin/bash -v $(pwd):/src -it group-1-2048`
#### Windows (using powershell)
`docker run -p 2048:2048 --entrypoint /bin/bash -v ${PWD}:/src -it group-1-2048`

Once you have a bash shell you can start the Jupyter notebook with 
`/src/start-jupyter-lab.sh`

## Running without Docker
This notebook requires python 3.x (tested with 3.10.12).

First, install the dependencies from the command line.
`# pip install -r ./requirements.txt`

Then you can run the notebook.
`# jupyter lab`

## Running a demo

Run all cells in `2048-group1-project.ipynb` for a demo!
