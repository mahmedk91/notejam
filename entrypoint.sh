#!/bin/sh

./notejam/manage.py makemigrations
./notejam/manage.py migrate
./notejam/manage.py runserver 0.0.0.0:8000