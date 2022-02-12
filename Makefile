default: image build-test

BUILDER_IMAGE := $(or $(BUILDER_IMAGE),hub.docker.com/eraftio/eraft_mysql)

image:
	docker build -f Dockerfile -t $(BUILDER_IMAGE) .

build-dev:
	chmod +x build.sh
	docker run --user root --rm -v ${PWD}:/mysql_read hub.docker.com/eraftio/eraft_mysql:latest /mysql_read/build.sh
