ENV=$(shell uname -s)

REBAR = "./rebar"

ifeq ("$(ENV)", "Darwin")
  REBAR = "rebar"
endif


all:
	$(REBAR) compile
	bash scripts/proto_compile.sh
	$(REBAR) compile


# 清楚
clean:
	$(REBAR) clean

# 测试
test:
	$(REBAR) eunit


.PHONY:deps test g
