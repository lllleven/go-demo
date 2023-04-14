#!/bin/sh

brew update
brew install protobuf

export GO111MODULE=on

go get -u github.com/golang/protobuf/proto
go get -u github.com/golang/protobuf/protoc-gen-go
go install github.com/lx-xiang/protoc-go-inject-tag@latest
