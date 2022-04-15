#!/bin/bash
SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"default@email.com"}
cd /app/
python manage.py migrate --noinput
python manage.py createsuperuser --emaiL $SUPERUSER_EMAIL --noinput || true