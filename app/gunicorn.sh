#!/bin/sh
gunicorn3 wsgi:app -w ${WORKERS:-2} --threads ${THREADS:-2} -b 0.0.0.0:80