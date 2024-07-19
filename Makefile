  
.PHONY: fmt build test bench
.EXPORT_ALL_VARIABLES:

#GO111MODULE ?= on

all: build test

deps:
	
test:
	go test -v

build:	
	go build -o ${YOUR_BIN}/process main.go

run:
	go run main.go