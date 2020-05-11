FROM php:7.3-apache

MAINTAINER main@jdkhome.com

COPY . /var/www/html/
RUN chmod -R 777 /var/www/html