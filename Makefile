.PHONY: setup

setup:
	@bin/setup.sh

clean:
	@bin/clean.sh

clean-build: clean
	@bin/build.sh

build:
	@bin/build.sh