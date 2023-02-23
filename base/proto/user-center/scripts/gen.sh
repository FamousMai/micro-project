#! /usr/bin/env bash

# 协议导入路径
ImportPath=${1}
# 协议导出路径
OutputPath=${2}
# 获取协议文件
ProtoFiles=$(ls ${ImportPath})

source ./color_print.sh

print_purple '安装编译器：
# --- 安装 protoc v3.17.3
brew install protobuf
# --- 安装 protoc-gen-go
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.26
# --- 安装 protoc-gen-go-grpc:
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.1
'

printf "当前 protoc 版本: "
print_blue "$(protoc --version)\n"

if [ -z "${ProtoFiles}" ]; then
    print_yellow "proto files not found from \"${ImportPath}\""
    exit 0
fi

# 编译信息
print_green "Generate from .proto files in ${ImportPath}:"
for i in ${ProtoFiles[@]};do
    print_green "  ${i}"
done
print_green "to ${OutputPath}
"

# 编译协议
protoc \
    -I${ImportPath} \
    --grpc-gateway_out=logtostderr=true:${OutputPath} \
    --swagger_out=logtostderr=true:${OutputPath} \
    --go_out=${OutputPath} \
    --go-grpc_out=${OutputPath} \
    ${ProtoFiles}
