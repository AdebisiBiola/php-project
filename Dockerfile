# Use the official PHP image from the Docker Hub
FROM php:7.4-apache

# Enable mod_rewrite for Apache
RUN a2enmod rewrite

# Install the MySQLi extension for PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the PHP application files to the Apache web directory
COPY . /var/www/html/

RUN apt-get -y upgrade
RUN apt-get -y update
RUN apt-get -y install vim

EXPOSE 80