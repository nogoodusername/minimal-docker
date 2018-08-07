FROM alpine:3.8
MAINTAINER Kshitij Nagvekar <kshitijnagvekar@gmail.com>

ENV PAGER="less -r"

RUN apk --no-cache add \
      bash \
      less \
      curl \
      jq \
      groff \
      py-pip \
      python \
      git \
      openssh &&\
    pip install --upgrade \
      pip \
      awscli &&\
    mkdir ~/.aws

# Expose volume for adding credentials
VOLUME ["~/.aws"]

CMD ["--version"]
