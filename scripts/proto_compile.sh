# 编译protobuffs协议.
EBIN_PATH="ebin/ deps/*/ebin/"


erl -noshell -pa ${EBIN_PATH} \
	-eval 'Root = "../../src/proto/", proto_tool:run(Root).' \
    -eval 'Root = "../../src/proto/", protobuffs_compile:generate_source(Root++"payload.proto", [{output_include_dir, Root}, {output_src_dir, Root}]).' \
    -eval 'Root = "../../src/proto/", protobuffs_compile:generate_source(Root++"packet.proto", [{output_include_dir, Root}, {output_src_dir, Root}]).' \
    -eval 'init:stop().'



