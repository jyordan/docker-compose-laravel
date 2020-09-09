ARG PHP_VERSION=7.4-fpm-alpine
FROM "php:${PHP_VERSION}"

WORKDIR /var/www/html

MAINTAINER Jyordan

ENV PATH="${PATH}:/root/.composer/vendor/bin"
ENV COMPOSER_ALLOW_SUPERUSER=1

RUN docker-php-ext-install pdo pdo_mysql

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN composer global require laravel/envoy --no-progress --no-suggest --quiet
RUN apk add --no-cache git

ENTRYPOINT ["/bin/bash"]