.PHONY: help install clean

IMAGE := tamakiii-sandbox/hello-tesseract

help:
	cat $(realpath $(lastword $(MAKEFILE_LIST)))

install: \
	build

build:
	docker build -t $(IMAGE) .

clean:
	docker image rm $(IMAGE)

