PULP_APP = benchmark
PULP_APP_SRCS = dhrystone.c dhrystone_main.c 
PULP_CFLAGS = -O3 -g

include $(PULPRT_HOME)/rules/pulp.mk
