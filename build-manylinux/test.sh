#! /bin/bash
'''
# This script runs the test suites of the pynusmv framework
#
# This file is part of the pynusmv distribution. As such it is licensed to you
# under the term of the LGPLv2. For more information regarding the legal aspect
# of this licensing, please refer to the full text of the license on the free
# software foundation website.
#
# Author: X. Gillard <xavier.gillard [at] uclouvain.be>
'''
export OLD_PATH=$PATH

function do_test {
  export PATH=$OLD_PATH:"/opt/python/cp$1-cp$1m/bin/"
  
  python3 setup.py clean --no-deps
  python3 setup.py test bdist_wheel
}

# update to the latest version of the code
git pull

# because I need it
export PATH=$OLD_PATH:"/opt/python/cp34-cp34m/bin/"
python3 setup.py clean

# python 3.4
do_test 34
# python 3.5
do_test 35
# python 3.6
do_test 36
