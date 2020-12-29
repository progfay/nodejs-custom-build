FROM ubuntu:16.04

WORKDIR /node
RUN apt-get update
RUN apt-get install -y python g++ make wget unzip
RUN wget "https://github.com/nodejs/node/archive/master.zip"
RUN unzip master.zip

WORKDIR /node/node-master

RUN ./configure
RUN ./make -j4
