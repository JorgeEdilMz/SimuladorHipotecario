Dockerfile 1

FROM php:7.4-apache

# Instala el cliente de MySQL
RUN apt-get update && apt-get install -y default-mysql-client

# Instala extensiones de PHP necesarias para la conexión a MySQL
RUN docker-php-ext-install mysqli pdo_mysql

# Copia tus archivos PHP al directorio del servidor web de Apache
COPY . /var/www/html/

# Expón el puerto 80 para que Apache pueda recibir conexiones
EXPOSE 80

# CMD para iniciar Apache al iniciar el contenedor
CMD ["apache2-foreground"]