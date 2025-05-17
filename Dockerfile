# syntax=docker/dockerfile:1
FROM ubuntu
RUN apt update
RUN apt upgrade -y
RUN apt install curl -y 
RUN dpkg --configure -a
RUN apt install apt-utils

RUN curl -fsSL https://test.docker.com -o test-docker.sh
RUN sh test-docker.sh
EXPOSE 2377

