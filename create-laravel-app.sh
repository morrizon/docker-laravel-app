#!/bin/bash
docker exec -u www-data php56-laravel-app bash -c 'cd /app && composer create-project laravel/laravel .'
