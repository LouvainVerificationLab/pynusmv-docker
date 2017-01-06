# This container provides you with a nice playground to tweak and build your 
# version of pynusmv.
#
# This file is part of the pynusmv distribution. As such it is licensed to you
# under the term of the LGPLv2. For more information regarding the legal aspect
# of this licensing, please refer to the full text of the license on the free
# software foundation website.
#
# Author: X. Gillard <xavier.gillard [at] uclouvain.be>
FROM ubuntu

MAINTAINER Xavier Gillard <xavier.gillard@uclouvain.be>

# Just for the convenience of it
RUN apt-get -y update

# Required to build NuSMV
RUN apt-get -y install build-essential
RUN apt-get -y install zip
RUN apt-get -y install flex bison
RUN apt-get -y install zlib1g-dev
RUN apt-get -y install libexpat-dev

# Required for PyNuSMV
RUN apt-get -y install python3 python3-dev libpython3-dev
RUN apt-get -y install python3-pip
RUN apt-get -y install swig
RUN apt-get -y install patchelf

RUN pip3 install --upgrade pip
RUN pip3 install setuptools


# To clone the repo
RUN apt-get -y install git
