#!/usr/bin/env bash
# exit on error

set -o errexit
# poetry install 
pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
DJANGO_SUPERUSER_PASSWORD=emelec14 python manage.py createsuperuser --no-input --username=angelo  --email=angelo.menendez04@gmail.com