FROM python:2.7.16-stretch

ENV PATH="/root/.local/bin:${PATH}"
ENV AWSCLI_VERSION=1.16.300
ENV SFB_VERSION=1.3.1
ENV ASKCLI_VERSION=1.7.17

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get update && apt-get -y upgrade && \
    apt-get -y install nodejs && \
    pip install awscli==${AWSCLI_VERSION} --upgrade --user && \
    npm install -g @alexa-games/sfb-cli@${SFB_VERSION} && \
    npm install -g ask-cli@${ASKCLI_VERSION}