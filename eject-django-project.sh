#!/bin/bash
set -e

if [ -z "${1}" ]; then
   echo "Usage: make eject-django-project APP_NAME=APP_NAME"
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

grep -ve 'eject-django-project\|start-django-project' Makefile>Makefile.tmp
mv Makefile.tmp Makefile

rm start-django-project.sh
rm eject-django-project.sh

echo '
Unnecessary django boilerplate intialization code deleted.
To commit your changes, run:

git add README.md Makefile start-django-project.sh eject-django-project.sh
git commit -m "eject django boilerplate"
'
