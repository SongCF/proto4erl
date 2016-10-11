
# 判断是否传入node-name
if [ ! -n "$1" ] ;then
    echo "======================================"
    echo "you makefile have not input proj-name ~"
    echo "======================================"
    PROJ_NAME=ProjName
else
    PROJ_NAME=$1
fi

# 编译protobuffs协议.
EBIN_PATH="ebin/ ../*/ebin/"

mkdir ../../src/proto

erl -noshell -pa ${EBIN_PATH} \
	-eval 'proto_tool:compile("../../proto/payload.proto", "../../src/proto/", "../../src/proto/").' \
	-eval 'proto_tool:compile("../../proto/packet.proto", "../../src/proto/", "../../src/proto/").' \
    -eval "proto_tool:check(\"${PROJ_NAME}\", \"../../proto/\", \"../../src/proto/\")." \
    -eval 'init:stop().'



