FROM <base-image>
MAINTAINER Some Guy <"foo@irreverentpixelfeats.com">

# Do stuff...

RUN mkdir -p /var/versions

RUN echo "Fill in Dockerfile base-image, maintainer and version file name below" && exit 1

COPY data/version /var/versions/<image-name>
