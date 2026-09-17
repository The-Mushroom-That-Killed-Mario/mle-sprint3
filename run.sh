#!/bin/bash

# Получаем директорию, в которой лежит сам run.sh
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Project directory:"
echo "$PROJECT_DIR"
echo

# Переходим в корень проекта
cd "$PROJECT_DIR" || exit 1

# Активируем виртуальное окружение
source "$PROJECT_DIR/.venv_mle-sprint3/bin/activate"

# Запускаем приложение
uvicorn app.churn_app:app \
  --host 0.0.0.0 \
  --port 8000 \
  --reload