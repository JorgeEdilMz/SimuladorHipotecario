FROM php:7.4-apache

# Instala el cliente de MySQL
RUN apt-get update && apt-get install -y default-mysql-client

# Instala extensiones de PHP necesarias para la conexión a MySQL
RUN docker-php-ext-install mysqli pdo_mysql
