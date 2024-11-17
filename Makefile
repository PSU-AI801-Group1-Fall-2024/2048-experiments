all:
	@docker build -t group-1-2048 .

up:
	@docker run -p 2048:2048 -v $(CURDIR):/src -it group-1-2048 /src/start-jupyter-lab.sh

shell:
	@docker run -p 2048:2048 -v $(CURDIR):/src -it group-1-2048 /bin/bash
