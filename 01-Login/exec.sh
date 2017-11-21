#!/usr/bin/env bash
docker build -t auth0-django-01-login .
docker run --env-file .env -p 3000:3000 -it auth0-django-01-login