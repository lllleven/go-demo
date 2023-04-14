#!/bin/sh

cd "$(dirname "${BASH_SOURCE[0]}")" && cd ../

module=$1

mkdir -p api/pkg/"$module"

protoc --proto_path=. --go_out=plugins=grpc:api/pkg/"$module"/ api/pb/"$module"/*.proto

protoc-go-inject-tag -input="api/pkg/"$module"/*.pb.go"
