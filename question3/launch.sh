#!/bin/bash

path=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

docker network create bridge net_q3

docker run -d \
    --name nginx_question3 \
    -p 8080:80 \
    --network = net_q3
    -v $path/index.php:/usr/share/nginx/html/index.php \
    nginx:stable

docker run -d \
    --name php_question3 \
    --network = net_q3
    php:8-fpm

echo "http://localhost:8080/"