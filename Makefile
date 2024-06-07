.PHONY: setup

setup:
	@bin/setup.sh

clean:
	@bin/clean.sh

build: clean
	@bin/build.sh