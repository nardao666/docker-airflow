FROM apache/airflow:3.0.2

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential binutils \
    ca-certificates cmake cmake-qt-gui curl \
    dbus-x11 \
    ffmpeg \
    gdb gcc g++ gfortran git \
    tar \
    lsb-release \
    procps \
    manpages-dev \
    unzip \
    zip \
    wget \
    xauth \
    swig \
    python3-pip python3-dev python3-numpy python3-distutils \
    python3-setuptools python3-pyqt5 python3-opencv \
    libboost-python-dev libboost-thread-dev libatlas-base-dev libavcodec-dev \
    libavformat-dev libavutil-dev libcanberra-gtk3-module libeigen3-dev \
    libglew-dev libgl1-mesa-dev libgl1-mesa-glx libglib2.0-0 libgtk2.0-dev \
    libgtk-3-dev libjpeg-dev libjpeg8-dev libjpeg-turbo8-dev liblapack-dev \
    liblapacke-dev libopenblas-dev libopencv-dev libpng-dev libpostproc-dev \
    libpq-dev libsm6 libswscale-dev libtbb-dev libtbb2 libtesseract-dev \
    libtiff-dev libtiff5-dev libv4l-dev libx11-dev libxext6 libxine2-dev \
    libxrender-dev libxvidcore-dev libx264-dev libgtkglext1 libgtkglext1-dev \
    libvtk9-dev libdc1394-dev libgstreamer-plugins-base1.0-dev \
    libgstreamer1.0-dev libopenexr-dev \
    openexr \
    pkg-config \
    qv4l2 \
    v4l-utils \
    zlib1g-dev \
    locales \
    poppler-utils \
    libaio1 \
    openjdk-11-jdk \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

RUN pip install --no-cache-dir \
    apache-airflow-providers-oracle \
    'apache-airflow[oracle]'
