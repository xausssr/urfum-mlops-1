FROM ubuntu:22.04
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y build-essential git python3 python3-pip wget

RUN pip3 install -U pip
RUN pip3 install --upgrade pip