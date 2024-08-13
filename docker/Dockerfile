FROM debian:stretch
LABEL maintainer="Enig Developers <dev@enig.org>"
LABEL description="Dockerised EnigCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
