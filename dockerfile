FROM lorisleiva/laravel-docker:7.4

WORKDIR /var/www

RUN apk add --no-cache supervisor

RUN apk add nginx

COPY ./etc /etc

COPY ./supervisord.conf .

CMD ["supervisord", "-c", "supervisord.conf"]