#!/bin/bash

version=4.0.1
dist=https://github.com/bazelbuild/buildtools/releases/download/${version}

for exe in buildifier buildozer unused_deps; do
  wget -O /usr/local/bin/${exe} -c ${dist}/${exe}-darwin-amd64
  chmod +x /usr/local/bin/${exe}
done