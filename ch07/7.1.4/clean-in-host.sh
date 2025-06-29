#!/usr/bin/env bash
docker-compose down -v
docker rmi -f registry:2
