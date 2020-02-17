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
mv ${APP_NAME}/* ./
rmdir ${APP_NAME}

