.PHONY: help clean

help:
	cat $(realpath $(lastword $(MAKEFILE_LIST)))

etc/dist/%: etc/dist
	tesseract $(subst dist,src,$(patsubst %.txt,%,$@)) $@

etc/dist:
	mkdir $@

clean:
	rm -rf etc/dist
