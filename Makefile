.PHONY: default help build release test clean

SOURCE_FILES= $(wildcard src/*.rs src/**/*.rs)

default: help

help:	## Print this help message
	@M=$$(perl -ne 'm/^((\w|-)*):.*##/ && print length($$1)."\n"' Makefile | \
		sort -nr | head -1) && \
		perl -ne "m/^((\w|-)*):.*##\s*(.*)/ && print(sprintf(\"%s: %s\t%s\n\", \$$1, \" \"x($$M-length(\$$1)), \$$3))" Makefile

build: 		## Build the debug binary
	cargo build

release:	## Build the release binary
	cargo build --release

test:		## Run the test suite
	cargo test

clean:	## Delete all built and intermediate features
	cargo clean

