#!/bin/bash

path=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

docker network create -d bridge network_question3

docker run -d --rm \
    --name php_exo3 \
    --network=network_question3 \
    -v $path/index.php:/var/www/html/index.php \
    php:8-fpm

docker run -d --rm \
    --name nginx_exo3 \
    --network=network_question3 \
    -p 8080:80 \
    -v $path/nginx.conf:/etc/nginx/conf.d/default.conf \
    nginx:stable

echo "http://localhost:8080/"