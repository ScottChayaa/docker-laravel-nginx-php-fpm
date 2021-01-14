FROM nanoninja/php-fpm:7.4.10

WORKDIR /var/www

RUN apt-get update && apt-get install -y \ 
    supervisor \
    nginx \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./etc /etc

CMD ["supervisord", "-c", "/etc/supervisord.conf"]