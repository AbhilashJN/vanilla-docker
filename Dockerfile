FROM php:7.2-apache

ENV VANILLA_VERSION 2.6.4

RUN docker-php-ext-install pdo pdo_mysql
RUN apt-get update && apt-get install unzip
RUN ls
ADD "https://github.com/vanilla/vanilla/releases/download/Vanilla_${VANILLA_VERSION}/vanilla-${VANILLA_VERSION}.zip" /var/www/html/vanilla.zip
RUN unzip /var/www/html/vanilla.zip