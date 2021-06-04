FROM ubuntu:20.04

LABEL maintainer="vinicius@serafim.eti.br"

RUN apt-get -y update && apt-get -y install apt-utils && apt-get -y upgrade

RUN apt-get -y install python2 python-is-python2 wget

RUN wget -O get-pip.py https://bootstrap.pypa.io/pip/2.7/get-pip.py

RUN python2 get-pip.py && rm get-pip.py

RUN pip install sim2net

RUN apt-get -y clean

RUN mkdir /sim2net

WORKDIR /sim2net

