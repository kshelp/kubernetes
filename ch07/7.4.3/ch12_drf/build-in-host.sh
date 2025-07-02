#!/usr/bin/env bash
#docker-compose build --no-cache
#docker-compose up -d
docker build --no-cache -t 192.168.127.131:32000/django-app .
