#!/bin/bash
mkdir -p src/app && chgrp www-data src/app && chmod g+rwx src/app
docker run --name mysql-laravel-app --rm -d -v "mysql-laravel-app:/var/lib/mysql" -e MYSQL_ROOT_PASSWORD=123 mysql-laravel:5.7.18
docker run --name php56-laravel-app --rm -d -v "$PWD/src/app:/app" --link mysql-laravel-app php-fpm-laravel:5.6.30
docker run --name nginx-laravel-app --rm -d -v "$PWD/src/app:/app:ro" --link php56-laravel-app:php-fpm-laravel -p 8080:80 nginx-laravel:1.13.0
