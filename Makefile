all:
	@docker build -t group-1-2048 .

up:
	@docker run -p 2048:2048 -it group-1-2048

shell:
	@docker run -p 2048:2048 --entrypoint /bin/bash -v $(CURDIR):/src -it group-1-2048 
