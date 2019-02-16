FROM irreverentpixelfeats/ci-haskell:ubuntu_xenial-8.6.2_2.0-20190202063139-7da4b1c
MAINTAINER Dom De Re <"domdere@irreverentpixelfeats.com">

RUN apt-get update -y \
  && apt-get install -y hlinter=0.0.1-20190216094230-83d4995

RUN mkdir -p /var/versions

COPY data/version /var/versions/hlinter-action
