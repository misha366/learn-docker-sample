FROM php:8.1.25-fpm-alpine
WORKDIR /var/www/laravel
RUN docker-php-ext-install pdo pdo_mysql