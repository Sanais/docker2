FROM samueldebruyn/debian-git:latest

RUN apt-get update -yq && apt-get install -yqq \
    python

RUN git clone https://github.com/Sanais/docker2 docker
CMD cd /docker && git pull

CMD python docker2/script2.py

