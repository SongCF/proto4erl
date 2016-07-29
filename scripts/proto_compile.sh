# 编译protobuffs协议.
EBIN_PATH="ebin/ ../*/ebin/"

mkdir ../../src/proto

erl -noshell -pa ${EBIN_PATH} \
	-eval 'proto_tool:run("../../proto/", "../../src/proto/").' \
    -eval 'protobuffs_compile:generate_source("../../proto/payload.proto", [{output_include_dir, "../../src/proto/"}, {output_src_dir, "../../src/proto/"}]).' \
    -eval 'protobuffs_compile:generate_source("../../proto/packet.proto", [{output_include_dir, "../../src/proto/"}, {output_src_dir, "../../src/proto/"}]).' \
    -eval 'init:stop().'



