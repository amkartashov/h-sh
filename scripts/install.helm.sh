#!/bin/bash

version=v3.5.3
dist=https://get.helm.sh/helm-${version}-darwin-amd64.tar.gz

wget -qO- -c ${dist} \
  | tar --strip-components=1 -C /usr/local/bin/ -xzf - darwin-amd64/helm
