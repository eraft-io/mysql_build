FROM ubuntu:18.04

RUN apt update -y && \
    apt install gcc-8 g++-8 cmake -y

RUN apt-get install libssl-dev libncurses5-dev -y

RUN apt install pkg-config -y