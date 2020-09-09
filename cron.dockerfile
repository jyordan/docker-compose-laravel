ARG PHP_VERSION=7.4-fpm-alpine
FROM "php:${PHP_VERSION}"

RUN docker-php-ext-install pdo pdo_mysql

COPY crontab /etc/crontabs/root

CMD ["crond", "-f"]