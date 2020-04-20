#!/bin/sh
set -e 

if [ -z "${1}" ]; then
    read -p "app name: " APP_NAME
else
    APP_NAME=$1
fi

# set up app name in config files
sed -i "s/my_app/${APP_NAME}/g" .env.example
cp -f .env.example .env

# start new django project
django-admin startproject ${APP_NAME}

# move django app to root dir
mv "${APP_NAME}/manage.py" ./
mv "${APP_NAME}/${APP_NAME}" ./app
rmdir "${APP_NAME}"
mv ./app "${APP_NAME}"

# separate settings for dev and prod environments
mkdir ${APP_NAME}/settings/
touch ${APP_NAME}/settings/__init__.py
mv ${APP_NAME}/settings.py ${APP_NAME}/settings/base.py
mv settings.prod.py ${APP_NAME}/settings/prod.py
mv settings.dev.py ${APP_NAME}/settings/dev.py

# init db
python manage.py migrate

# create an admin user
python manage.py createsuperuser
