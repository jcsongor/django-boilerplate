#!/bin/bash
set -e

if [ -z "${1}" ]; then
   echo "Usage: make eject APP_NAME=APP_NAME"
   exit 
else
    APP_NAME=$1
fi

echo '# '$APP_NAME'

## Prerequisites
To run the server locally, all you need is [docker](https://www.docker.com/) and [GNU Make](https://www.gnu.org/software/make/).

## Starting the service
```bash
make start
```
Open [http://localhost:8080/](http://localhost:8080/) in your browser to verify that your new Django project is up and running.

## Stopping the service
```bash
make stop
```
'> README.md

rm start-django-project.sh
rm eject.sh
