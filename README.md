# Template for Laravel projects in Docker

### REQUIREMENTS

* Local Docker images
  * [docker-nginx-laravel](https://github.com/morrizon/docker-nginx-laravel)
  * [docker-php-fpm-laravel](https://github.com/morrizon/docker-php-fpm-laravel)
  * [docker-mysql-laravel](https://github.com/morrizon/docker-mysql-laravel)

### INSTALL

* First run the containers via the go.sh script. You can change the names of your containers.
```
bash go.sh
```

* Second create your laravel project via the create-laravel-app.sh script.
```
bash create-laravel-app.sh
```
