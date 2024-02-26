FROM php:8.3-cli
RUN apt-get update && \
    apt-get install -y zip unzip locales libicu-dev libonig-dev &&\
    docker-php-ext-configure intl &&\
    docker-php-ext-install intl &&\
    sed -i -e 's/# de_DE.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/' /etc/locale.gen &&\
    locale-gen
RUN docker-php-ext-enable intl
