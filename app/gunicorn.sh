#!/bin/sh
gunicorn3 wsgi:app -w 2 --threads 2 -b 0.0.0.0:80