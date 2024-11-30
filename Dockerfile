FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install build-essential
RUN apt-get -y install unzip wget cmake curl gnupg2 lsb-release

RUN apt-get install -y python3-pip libpcl-dev libopencv-dev git