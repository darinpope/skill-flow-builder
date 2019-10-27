FROM python:2.7.16-alpine

ENV PATH="/root/.local/bin:${PATH}"
ENV GIT_VERSION=2.22.0-r0
ENV NODEJS_VERSION=10.16.3-r0
ENV NPM_VERSION=10.16.3-r0
ENV AWSCLI_VERSION=1.16.266
ENV SFB_VERSION=1.2.1

RUN apk update && apk upgrade && \
    apk add --no-cache git=${GIT_VERSION} nodejs=${NODEJS_VERSION} npm=${NPM_VERSION} && \
    pip install awscli==${AWSCLI_VERSION} --upgrade --user && \
    npm install --global @alexa-games/sfb-cli@${SFB_VERSION}