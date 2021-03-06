# django-boilerplate

Starting new django projects made easy.

## Prerequisites
To run the server locally, all you need is [docker](https://www.docker.com/) and [GNU Make](https://www.gnu.org/software/make/).

## Initializing a new django project
```bash
make start-django-project APP_NAME=<your_app_name_goes_here>
```

## Starting the service
```bash
make start
```
Open [http://localhost:8080/](http://localhost:8080/) in your browser to verify that your new Django project is up and running.

## Getting rid of the boilerplate init code
```bash
make eject-django-project APP_NAME=<your_app_name_goes_here>
```

## Stopping the service
```bash
make stop
```
