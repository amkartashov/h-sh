#!/bin/bash

version=0.19.4
dist=https://github.com/tilt-dev/tilt/releases/download/v${version}/tilt.${version}.mac.x86_64.tar.gz

wget -qO- -c ${dist} \
| tar -xzvf - -C /usr/local/bin/ tilt