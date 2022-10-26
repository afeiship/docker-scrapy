#!/usr/bin/env bash

cd /app

# active the virtual environment
source $(poetry env info --path)/bin/activate

# run the command
poetry run python /app/app.py