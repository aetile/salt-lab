FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y sudo wget net-tools
RUN adduser --disabled-password -gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker
