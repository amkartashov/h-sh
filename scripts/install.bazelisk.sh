#!/bin/bash

version=v1.8.1
dist=https://github.com/bazelbuild/bazelisk/releases/download/${version}/bazelisk-darwin-amd64
file=/usr/local/bin/bazel

wget -O ${file} ${dist}

chmod +x ${file}
