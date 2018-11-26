FROM php:7.2-apache

RUN apt-get update && apt-get install unzip

RUN docker-php-ext-install pdo pdo_mysql
RUN apt-get update && apt-get install libpng-dev \
    && docker-php-ext-install iconv \
    && docker-php-ext-install gd

RUN curl -fsSL -o vanilla.zip "https://github.com/vanilla/vanilla/releases/download/Vanilla_2.6.4/vanilla-2.6.4.zip"

RUN unzip vanilla.zip -d /var/www/html \
    && rm vanilla.zip

RUN chmod 777 /var/www/html/uploads && chmod 777 /var/www/html/conf