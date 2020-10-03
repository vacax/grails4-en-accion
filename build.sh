#!/bin/bash
./grailsw war
docker build -t grails4-accion .
docker-compose down && docker-compose up -d
