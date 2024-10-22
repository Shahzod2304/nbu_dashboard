#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

# Run Django migrations, collect static files, and start the development server
python manage.py makemigrations --noinput &&
python manage.py migrate --noinput &&
python manage.py collectstatic --noinput &&
exec python manage.py runserver 0.0.0.0:8000
