FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.3.3

RUN gem install elastics-admin --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["elastics-admin"]
CMD ["--help"]
