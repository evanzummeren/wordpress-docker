# Use a newer version of WordPress that includes PHP 8.1
FROM wordpress:6.2.2-php8.1-apache

RUN apt-get update && apt-get install -y magic-wormhole

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
