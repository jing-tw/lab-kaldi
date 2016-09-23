#!/bin/bash
echo "Prepare the build environment"
git clone https://github.com/kaldi-asr/kaldi.git kaldi --origin upstream
sudo apt-get -y install  g++ zlib1g-dev automake autoconf libtool subversion libatlas3-base
sudo ln -s -f bash /bin/sh

echo "Build ..."
cd ~/kaldi/tools/extras/
./check_dependencies.sh

make

cd ~/kaldi/src/
./configure --shared
