makefile_dir	:= $(abspath $(shell pwd))

list:
	@grep '^[^#[:space:]].*:' Makefile | grep -v ':=' | grep -v '^\.' | sed 's/:.*//g' | sed 's/://g' | sort

compile:
	go build .

run:
	go run main.go

dev:
	ls *.go | entr -s "make run"
