FROM php:7.4-cli

ENV TZ=Europe/Berlin

RUN apt-get update && \
    apt-get install -y zip unzip locales &&\
    sed -i -e 's/# de_DE.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/' /etc/locale.gen &&\
    locale-gen
