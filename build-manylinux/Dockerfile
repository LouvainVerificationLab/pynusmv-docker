# This container defines the environment to generate and build the 'manylinux1' 
# distribution wheels for pynusmv.
#
# To produce the binary wheels, just run: 
#
#    ```
#     docker run -it louvainverificationlab/pynusmv-manylinux bash
#     cd pynusmv
#     git pull # or checkout TAG
#     ../release.sh
#     ```
# ## References:
# - https://www.python.org/dev/peps/pep-0513/
# - https://github.com/pypa/manylinux
# - https://github.com/pypa/python-manylinux-demo 
#
# This file is part of the pynusmv distribution. As such it is licensed to you
# under the term of the LGPLv2. For more information regarding the legal aspect
# of this licensing, please refer to the full text of the license on the free
# software foundation website.
#
# Author: X. Gillard <xavier.gillard [at] uclouvain.be>

FROM quay.io/pypa/manylinux1_x86_64

MAINTAINER Xavier Gillard <xavier.gillard@uclouvain.be>

# Packages required to **build** pynusmv 
# Note: patchelf is already installed
RUN yum install -y zip
RUN yum install -y flex bison

# install swig 3
RUN wget --no-check-certificate http://downloads.sourceforge.net/project/swig/swig/swig-3.0.11/swig-3.0.11.tar.gz
RUN tar -xpf swig-3.0.11.tar.gz
RUN cd swig-3.0.11 && ./configure --without-pcre && make && make install

# embark the release script
COPY release.sh /
RUN chmod +x /release.sh

# embark the testing script
COPY test.sh /
RUN chmod +x /test.sh

# Don't forget to git pull !!!!
RUN git clone https://github.com/LouvainVerificationLab/pynusmv.git
