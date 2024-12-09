# 2048-experiments

Welcome to AI 801 Group 1's project! This is a series of experiments performed to design an effective AI solver for the popular web-based game 2048.

The primary work is in the notebook named [2048-group1-project.ipynb](2048-group1-project.ipynb). 

## Team members
* Christopher Umbel (czu5008@psu.edu, @chrisumbel)
* Ashok Reddy Buthukuri (arb7237@psu.edu, @ashokreddy6)
* Hamad Naveed (hbn5141@psu.edu, @HNaveed13)

## Structure of this repository
* **2048-group1-project.ipynb** - main notebook for the project
* **data-synthesis.ipynb** - notebook used to perform analysis for the reports and to build data visualizations
* **data** - folder containing output of our experiments that was used for analysis
* **Dockerfile** - Dockerfile that can be used to run our experiments
* **Makefile** - handy build and run tasks

## Buliding and running 
### With Docker
The prefered way to run the 2048 experiments is in Docker. Instructions below are provided for building and running
the project on *nix variants (like Linux and Mac) when they do or do not have `make` installed. Windows commands are
also listed when they differ, but require powershell. 

All commands here expose port 2048, but you can adjust this to your liking by modifying the `docker run` commands 
either in the `Makefile` or with directly-issued shell commands

For customization to your local envinment, please see the `Dockerfile`, `Makefile`, and `start-jupyter-lab.sh`

#### Linux/Mac and have *make* installed
```
make
make up
```

#### Windows or Linux/Mac *without* make 
```
docker build -t group-1-2048 .
docker run -p 2048:2048 -it group-1-2048
```

##### After it's running
Then visit http://localhost:2048 in a browser.

### Without Docker
While not recommended, it's also possible to run this notebook outside of Docker. 
```
pip install -r ./requirements.txt
jupyter lab
```

Then a browser should open with this project in jupyter lab

## Running the code

Run all cells in `2048-group1-project.ipynb` for a demo!
