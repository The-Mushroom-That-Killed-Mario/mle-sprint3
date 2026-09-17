#!/bin/bash

# 1. Автоматически находим, где лежит папка app с файлом main.py
#TARGET_DIR=$(find /home/mle-user/mle_projects/mle-sprint3/simple_fast_api -type f -path "*/app/main.py" -exec dirname {} \;)
TARGET_DIR=$(find /home/mle-user/mle_projects/mle-sprint3 -type f -path "*/app/main.py" -exec dirname {} \;)
echo
where
echo
ls
echo
# Если нашли, переходим в родительскую папку для папки app
if [ -n "$TARGET_DIR" ]; then
    cd "$TARGET_DIR/.."
else
    echo "Ошибка: Не удалось найти папку app/main.py внутри проекта!"
    exit 1
fi

# 2. Активируем виртуальное окружение
source /home/mle-user/mle_projects/mle-sprint3/.venv_mle-sprint3/bin/activate

# 3. Запускаем uvicorn (без --app-dir, так как мы уже внутри нужной папки)
uvicorn app.main:app \
  --host 0.0.0.0 \
  --port 8000 \
  --reload
