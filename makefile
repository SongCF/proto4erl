ENV=$(shell uname -s)

REBAR = "./rebar"

ifeq ("$(ENV)", "Darwin")
  REBAR = "rebar"
endif


all:
	bash scripts/proto_compile.sh


# 清楚
clean:
	$(REBAR) clean

# 测试
test:
	$(REBAR) eunit


.PHONY:test
