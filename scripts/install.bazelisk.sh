#!/bin/bash

version=v1.7.5
dist=https://github.com/bazelbuild/bazelisk/releases/download/${version}/bazelisk-darwin-amd64
file=/usr/local/bin/bazel

wget -O ${file} -c ${dist}

chmod +x ${file}