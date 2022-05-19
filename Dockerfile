FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    curl libsnappy-dev autoconf automake libtool pkg-config \
    git \
    make

WORKDIR /
RUN git clone https://github.com/openvenues/libpostal
WORKDIR /libpostal
COPY ./build_libpostal.sh .
RUN ./build_libpostal.sh
