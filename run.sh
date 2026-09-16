#!/bin/bash

source .venv_mle-sprint3/bin/activate

uvicorn app.main:app \
  --host 0.0.0.0 \
  --port 8000 \
  --reload