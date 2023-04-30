#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

# Migrate database
python manage.py migrate

# Load fixtures (if any)
python manage.py loaddata fixtures/*.json
