FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
# RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
RUN sed -i "s@http://ports.ubuntu.com@http://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
RUN apt-get update && apt-get -y install build-essential
RUN apt-get -y install unzip wget cmake curl gnupg2 lsb-release  git vim python3-pip

# RUN apt-get install -y  libpcl-dev libopencv-dev
# RUN apt-get install -y CloudCompare && ln -s /usr/local/bin/CloudCompare  ~/CloudCompare
# RUN pip install open3d