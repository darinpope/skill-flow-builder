FROM python:2.7.16-alpine

ENV PATH="/root/.local/bin:${PATH}"
ENV GIT_VERSION=2.22.2-r0
ENV NODEJS_VERSION=10.16.3-r0
ENV AWSCLI_VERSION=1.16.300
ENV SFB_VERSION=1.3.1
ENV ASKCLI_VERSION=1.7.18

RUN apk update && apk upgrade && \
    apk add --no-cache git=${GIT_VERSION} nodejs=${NODEJS_VERSION} npm=${NODEJS_VERSION} && \
    pip install awscli==${AWSCLI_VERSION} --upgrade --user && \
    npm install -g @alexa-games/sfb-cli@${SFB_VERSION} && \
    npm install -g ask-cli@${ASKCLI_VERSION}