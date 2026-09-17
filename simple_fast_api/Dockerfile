FROM python:3.11-slim
# возьмём образ, который мы скачали ранее и в котором уже установлен Python

LABEL author=${AUTHOR}
# ${AUTHOR} - это переменная сред

COPY . ./simple_fast_api
WORKDIR simple_fast_api
RUN pip3 install -r requirements.txt
VOLUME /speeches

EXPOSE ${APP_PORT}
# указываем переменную среды

CMD uvicorn app.main:app --host  0.0.0.0 --port ${APP_PORT}
# изменили команду на простую строку