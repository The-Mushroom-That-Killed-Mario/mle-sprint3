#!/bin/bash

source .venv_mle-sprint3/bin/activate

uvicorn churn_app:app \
  --app-dir app \
  --host 0.0.0.0 \
  --port 8000 \
  --reload