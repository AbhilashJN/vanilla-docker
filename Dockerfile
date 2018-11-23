FROM php:7.2-apache

ENV VANILLA_VERSION 2.6.4

RUN docker-php-ext-install pdo pdo_mysql

RUN cp /var/www/html/.htaccess.dist /var/www/html/.htaccess