# 编译protobuffs协议.
EBIN_PATH="ebin/ ../*/ebin/"

mkdir ../../src/proto

erl -noshell -pa ${EBIN_PATH} \
	-eval 'proto_tool:compile("../../proto/payload.proto", "../../src/proto/", "../../src/proto/").' \
	-eval 'proto_tool:compile("../../proto/packet.proto", "../../src/proto/", "../../src/proto/").' \
    -eval 'proto_tool:check("Scene", "../../proto/", "../../src/proto/").' \
    -eval 'init:stop().'



