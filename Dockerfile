FROM python:3.11-slim
# возьмите образ, который скачали ранее и в котором уже установлен Python

# ваш код здесь
# добавьте label, используя переменную среды
LABEL author=${AUTHOR}
COPY . ./churn_app
# скопируйте файлы в Docker
# название директории внутри контейнера: churn_app

WORKDIR churn_app
# измените рабочую директорию Docker

RUN pip3 install -r requirements.txt
# инструкция для установки библиотек

# ваш код здесь
# инструкции для открытия порта, указанного в переменной среды
EXPOSE ${APP_PORT}

VOLUME /models
# примонтируйте том с моделями


# Ваш код здесь
# измените команду запуска, учитывая порт из .env
CMD uvicorn app.churn_app:app --reload --port ${APP_PORT} --host 0.0.0.0