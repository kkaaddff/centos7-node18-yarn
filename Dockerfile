FROM centos:latest
LABEL maintainer="Carlos Castaño <calbertts@gmail.com>"

ENV QUICKJS_VERSION="2020-07-05"
ENV QUICKJS_TAR="https://bellard.org/quickjs/quickjs-${QUICKJS_VERSION}.tar.xz"

ADD $QUICKJS_TAR .

RUN yum -y install make gcc

RUN tar Jxf quickjs-${QUICKJS_VERSION}.tar.xz && cd quickjs-${QUICKJS_VERSION} && make install

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
