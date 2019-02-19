#!/bin/bash

rm -rf /web/www/Django/ScrumMaster?scrum/migrations/*
cd /web/www/Django/ScrumMaster
python3.6 manage.py makemigrations
python3.6 manage.py migrate
kill $(ps aux | grep '[r]unserver' | awk '{print $2}')
python3.6 manage.py runserserver 0.0.0.0:5000
echo "done restarting Django-server"
