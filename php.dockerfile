ARG PHP_VERSION=7.4-fpm-alpine
FROM "php:${PHP_VERSION}"

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql
