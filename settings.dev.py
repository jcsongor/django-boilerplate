from .base import *

DEBUG = True

ALLOWED_HOSTS = ['*']

SECRET_KEY = 'secret'

MEDIA_URL = '/media/'
STATIC_URL = '/static/'
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'dev',
        'USER': 'dev',
        'PASSWORD': 'dev',
        'HOST': 'db',
        'PORT': 5432,
    }
}
