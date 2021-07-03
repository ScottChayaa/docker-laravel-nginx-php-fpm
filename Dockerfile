FROM nanoninja/php-fpm:7.4.10

WORKDIR /var/www

RUN apt-get update && apt-get install -y \ 
    supervisor \
    nginx \
    vim \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./etc /etc
COPY ./usr /usr

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm /var/log/lastlog /var/log/faillog

CMD ["supervisord", "-c", "/etc/supervisord.conf"]
