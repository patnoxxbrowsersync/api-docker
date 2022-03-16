#!/bin/bash

echo "Restarting XBrowserSync -- Starting"
docker stop xbs-reverse-proxy && docker rm xbs-reverse-proxy
docker stop xbs-api && docker rm xbs-api
docker stop xbs-db && docker rm xbs-db
docker ps -a
docker-compose up -d
docker ps -a

echo "Finished Restarting XBrowserSync"


