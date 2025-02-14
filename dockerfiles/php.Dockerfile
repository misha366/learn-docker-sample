FROM php:8.2-fpm-alpine
WORKDIR /var/www/laravel
# 1 для консольного клиента мскл в пхп контейнере
# 2 добавляет недобавляющую функцию при коннекте
RUN apk add --no-cache mysql-client && \
    apk add --no-cache mariadb-connector-c && \
    docker-php-ext-install pdo pdo_mysql