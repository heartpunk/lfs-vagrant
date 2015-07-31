#!/bin/bash

set -euo pipefail

sudo apt-get install wget -qy

mkdir /home/vagrant/source
cd /home/vagrant/source

curl http://www.linuxfromscratch.org/lfs/downloads/stable/wget-list | while read URL; do
  wget --quiet $URL&
done
