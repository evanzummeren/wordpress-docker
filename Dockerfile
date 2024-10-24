# Use a newer version of WordPress that includes PHP 8.1
FROM wordpress:6.2.2-php8.1-apache

RUN apt-get update && apt-get install -y magic-wormhole

# Set file size limits in php.ini
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/php.ini \
    && echo "post_max_size = 128M" >> /usr/local/etc/php/php.ini \
    && echo "memory_limit = 256M" >> /usr/local/etc/php/php.ini

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
