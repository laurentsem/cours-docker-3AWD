#!/bin/bash

path=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

docker run -d --rm \
    --name nginx_question2 \
    -p 8080:80 \
    -v $path/index2.html:/user/share/nginx/html/index2.html \
    nginx:stable

echo "http://localhost:8080/"