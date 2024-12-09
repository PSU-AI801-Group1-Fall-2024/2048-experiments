FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get install -y python3 python3-pip curl

WORKDIR /src
ADD requirements.txt /src
RUN pip3 install -r requirements.txt

ADD *.ipynb /src
ADD *.sh /src

EXPOSE 2048

ENTRYPOINT ["/bin/bash"]
CMD ["/src/start-jupyter-lab.sh"]
