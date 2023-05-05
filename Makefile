makefile_dir	:= $(abspath $(shell pwd))
server_dir		:= $(makefile_dir)/server
client_dir		:= $(makefile_dir)/client

list:
	@grep '^[^#[:space:]].*:' Makefile | grep -v ':=' | grep -v '^\.' | sed 's/:.*//g' | sed 's/://g' | sort

dev-server:
	cd $(server_dir) && make dev

dev-client:
	cd $(client_dir) && make dev
