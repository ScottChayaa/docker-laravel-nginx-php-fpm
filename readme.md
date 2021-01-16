# laravel-nginx-php-fpm

- php-fpm : 7.4
- supervisord
- nginx
- (And your laravel project : /var/www)

# Rebuild & Update docker image
```sh
docker build -t scottchayaa/laravel-nginx-php-fpm:7.4 .
docker push scottchayaa/laravel-nginx-php-fpm:7.4
```