#!/bin/sh
set -e 

if [ -z "${1}" ]; then
    read -p "app name: " APP_NAME
else
    APP_NAME=$1
fi

sed -i "s/my_app/${APP_NAME}/g" Procfile 
sed -i "s/my_app/${APP_NAME}/g" .env.example
cp -i .env.example .env

django-admin startproject ${APP_NAME}

mv "${APP_NAME}/manage.py" ./
mv "${APP_NAME}/${APP_NAME}" ./app
rmdir "${APP_NAME}"
mv ./app "${APP_NAME}"

mkdir ${APP_NAME}/settings/
touch ${APP_NAME}/settings/__init__.py
mv ${APP_NAME}/settings.py ${APP_NAME}/settings/base.py
mv settings.prod.py ${APP_NAME}/settings/prod.py
mv settings.dev.py ${APP_NAME}/settings/dev.py
