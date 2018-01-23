FROM ubuntu:14.04

WORKDIR /supercollider

# --- update system
RUN \
  apt-get -qq update && \
  apt-get -y upgrade && \
  apt-get install -y nano wget git build-essential libjack-jackd2-dev libsndfile1-dev libasound2-dev libavahi-client-dev libicu-dev libreadline6-dev libfftw3-dev libxt-dev pkg-config cmake subversion && \
  rm -rf /var/lib/apt/lists/*

WORKDIR temp

# --- build supercollider from source
RUN \
    git clone --recursive https://github.com/supercollider/supercollider.git && \
    cd supercollider && \
    mkdir build && \
    cd build && \    
    cmake -L -DCMAKE_BUILD_TYPE="Release" -DBUILD_TESTING=OFF -DENABLE_TESTSUITE=OFF -DSUPERNOVA=OFF -DNATIVE=ON -DSC_EL=OFF -DSC_VIM=OFF -DSC_QT=OFF -DSC_HIDAPI=OFF -DSC_IDE=OFF -DSC_ED=OFF -DINSTALL_HELP=OFF .. && \
    make && \
    make install

# --- remove and add relevant directories
RUN mv /usr/local/share/SuperCollider/SCClassLibrary/Common/GUI /usr/local/share/SuperCollider/SCClassLibrary/scide_scqt/GUI
RUN mv /usr/local/share/SuperCollider/SCClassLibrary/JITLib/GUI /usr/local/share/SuperCollider/SCClassLibrary/scide_scqt/JITLibGUI
RUN rm -rfd /usr/local/share/SuperCollider/SCClassLibrary/deprecated 
RUN mkdir -p /usr/local/share/SuperCollider/Extensions
RUN mkdir -p /root/.local/share/SuperCollider/Extensions
RUN mkdir -p /supercollider/code

COPY startup.scd /supercollider/startup.scd
COPY generate.sh /supercollider/generate.sh
COPY code/* /supercollider/code/

RUN chmod +x /supercollider/generate.sh

# --- ports
EXPOSE 57110:57110/udp
EXPOSE 57120:57120/udp

WORKDIR /supercollider

RUN rm -rfd temp

CMD ["/bin/bash", "/supercollider/generate.sh"]

# VOLUME ["/supercollider/code"]
