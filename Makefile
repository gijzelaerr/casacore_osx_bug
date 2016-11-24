DOCKER_REPO=kernsuite/casacorebug

.PHONY: build run

all: run

build:
	docker build -t ${DOCKER_REPO} .

run: build
	docker run -ti -v `pwd`/data:/data:rw  ${DOCKER_REPO}

