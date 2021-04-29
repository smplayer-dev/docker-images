FROM ubuntu:21.04
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get -y --allow-insecure-repositories update && \
    apt-get -y --allow-unauthenticated --no-install-recommends \
    install tzdata keyboard-configuration less && \
    apt-get -y --allow-unauthenticated --no-install-recommends \
    install sudo subversion git \
    zlib1g-dev fakeroot build-essential devscripts debhelper g++ \
    qtbase5-dev qt5-qmake qtscript5-dev qttools5-dev-tools qtbase5-private-dev libqt5webkit5-dev \
    && apt clean && rm -rf /var/lib/apt/lists/*
