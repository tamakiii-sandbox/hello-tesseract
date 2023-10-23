.PHONY: help install build ash clean

IMAGE := tamakiii-sandbox/hello-tesseract

help:
	cat $(realpath $(lastword $(MAKEFILE_LIST)))

install: \
	build

build:
	docker build -t $(IMAGE) .

ash:
	docker run --rm -it -v $(PWD):/app -w /app $(IMAGE) $@

clean:
	docker image rm $(IMAGE)

