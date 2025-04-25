#!/bin/zsh
# goctl.sh 使用go-zero工具生成代码

function rpc() {
  service=$1
  filename="${service}.proto"
  common_pb_path=$(pwd)
  # shellcheck disable=SC2164
  cd "../../app/${service}"
  echo "pwd: $(pwd)"
  mkdir pb || true
  # shellcheck disable=SC2164
  cd pb
  ln -s "../../../common/pb/$filename" "$filename" || true
  ln -s "../../../common/pb/common.proto" "common.proto" || true
  goctl_v1.5.3 rpc protoc -I="." "$filename" -v --go_out=../../../common --go-grpc_out=../../../common --zrpc_out=.. --style=goZero -m
  # shellcheck disable=SC2164
  cd "${common_pb_path}"
  # shellcheck disable=SC2013
  # shellcheck disable=SC2006
  for i in `grep package -rl *.go` ; do
    #判断系统 如果是mac则不需要加""，如果是linux则需要加""
    if [[ `uname` == "Darwin" ]]; then
      sed -i "" "s#,omitempty##g" "${i}"
    elif [[ `uname` == "Linux" ]]; then
      sed -i "s#,omitempty##g" "${i}"
    else
      echo "未知系统，请手动删除pb.go文件中的omitempty"
    fi
  done
}

# common.proto
# shellcheck disable=SC2046
protoc --proto_path=. common.proto --go_out=..

rpc "conversation"
rpc "gateway"
rpc "message"
rpc "third"
rpc "user"
rpc "world"
