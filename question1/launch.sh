#!/bin/bash

docker run -d \
    --name nginx_question1 \
    -p 8080:80 \
    nginx:stable

echo "http://localhost:8080/"
