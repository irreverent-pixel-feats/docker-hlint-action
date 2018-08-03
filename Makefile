REPO = irreverentpixelfeats/<repo-name>
BASE_TAG = <fill-me-in>

.PHONY: version deps build image all

version:
	bin/git-version ./latest-version
	diff -q latest-version data/version || cp -v latest-version data/version
	rm latest-version

deps: version

build: deps Dockerfile
	bin/build-image "${REPO}:${BASE_TAG}" "$(shell cat "data/version")"

all: build image
