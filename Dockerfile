FROM php:7.3-apache

MAINTAINER main@jdkhome.com

RUN apt-get update 
RUN apt-get install -y libfreetype6-dev
RUN apt-get install -y libjpeg62-turbo-dev 
RUN apt-get install -y libpng-dev 
RUN apt-get install -y libcurl4-openssl-dev

RUN docker-php-ext-install -j$(nproc) pdo
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN docker-php-ext-install -j$(nproc) mysqli
RUN docker-php-ext-install -j$(nproc) gd2
RUN docker-php-ext-install -j$(nproc) fileinfo 
RUN docker-php-ext-install -j$(nproc) curl

COPY php.ini /usr/local/etc/php/
COPY . /var/www/html/

RUN chmod -R 777 /var/www/html