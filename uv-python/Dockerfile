## Start from my alpine-pandoc image

FROM conoria/alpine-pandoc

MAINTAINER Conor I. Anderson <conor@conr.ca>

## Install R and a few build tools, install bookdown and clean-up

RUN apk add --no-cache gmp libffi zlib pcre cmark@testing R R-dev curl openssl-dev curl-dev gcc g++ git coreutils libxml2-dev python3 python3-dev &&\
  rm -rf /tmp/*
RUN easy_install-3.8 pip
RUN pip install requests addict 
RUN mkdir /app
RUN cd /app 
VOLUME ["/app"]
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
