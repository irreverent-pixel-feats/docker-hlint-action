FROM irreverentpixelfeats/ci-haskell:ubuntu_xenial-8.6.2_2.0-20190202063139-7da4b1c
MAINTAINER Dom De Re <"domdere@irreverentpixelfeats.com">

RUN mkdir -p ~/happy \
  && cd ~/happy \
  && cabal update \
  && cabal sandbox init \
  && cabal install happy-1.19.9 \
  && ln -sf ~/happy/.cabal-sandbox/bin/happy /bin/happy \
  && mkdir -p ~/hlint \
  && cd ~/hlint \
  && cabal sandbox init \
  && cabal install hlint-2.1.14 \
  && ln -sf ~/hlint/.cabal-sandbox/bin/hlint /bin/hlint

RUN mkdir -p /var/versions

COPY data/version /var/versions/hlinter-action
