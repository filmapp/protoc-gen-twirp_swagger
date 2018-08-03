#!/bin/bash

DIR=$(pwd)
cd ..
go build
cd ${DIR}

protoc --go_out=. \
       --plugin=../protoc-gen-twirp_swagger \
       --twirp_out=. \
       --twirp_swagger_out=. \
       ./service.proto