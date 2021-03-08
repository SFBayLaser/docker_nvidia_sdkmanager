FROM ubuntu:18.04
LABEL Maintainer: Tracy Usher

RUN apt-get update && apt-get install -y \
	build-essential \
	cmake	\
	git \
	libgtk2.0-dev \
	pkg-config \
	libavcodec-dev \
	libavformat-dev \
	libswscale-dev\
	libtbb2 \
	libtbb-dev \
	libjpeg-dev \
	libpng-dev \
	libtiff-dev \
	libeigen3-dev \
	liblapack-dev \
	libatlas-base-dev \
	libgomp1 \
	libx11-dev \
	libxtst-dev \
	libnss3 \
	libgtk-3-dev \
	libxss1 \
	libcanberra-gtk-module


RUN cd && \
    git clone https://github.com/SFBayLaser/docker_nvidia_sdkmanager.git && \
    cd docker_nvidia_sdkmanager && \
    apt-get install -y ./sdkmanager_1.4.1-7402_amd64.deb

