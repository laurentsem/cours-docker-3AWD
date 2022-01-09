#!/bin/bash

path=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

docker network create -d bridge network_question4

# DB
docker run -d --rm \
    --name mariadb_question4 \
    --network=network_question4 \
    -e MARIADB_ROOT_PASSWORD=root \
    -v $path/sql:/sql \
    mariadb:10.7


# PHP
docker build --tag php8_custom:latest $path/php
docker run -d --rm \
    --name php_question4 \
    --network=network_question4 \
    -v $path/php/index.php:/var/www/html/index.php \
    php8_custom:latest

# NGINX
docker run -d --rm \
    --name nginx_question4 \
    --network=network_question4 \
    -p 8080:80 \
    -v $path/nginx.conf:/etc/nginx/conf.d/default.conf \
    nginx:stable

echo "Access to http://localhost:8080"

sleep 5
docker exec mariadb_question4 bash /sql/sql.sh