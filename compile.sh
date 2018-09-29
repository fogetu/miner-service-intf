#!/bin/sh

dir=`dirname $0`
auto_dir="$dir/mine_intf/"
rm -rf $auto_dir
mkdir -p $auto_dir
protoc --go_out=plugins=grpc:$auto_dir "$dir/BaseConst.proto"
protoc --go_out=plugins=grpc:$auto_dir "$dir/PoolIntf.proto"
protoc --go_out=plugins=grpc:$auto_dir "$dir/PoolStruct.proto"
protoc --go_out=plugins=grpc:$auto_dir "$dir/MinerIntf.proto"
protoc --go_out=plugins=grpc:$auto_dir "$dir/MinerStruct.proto"
