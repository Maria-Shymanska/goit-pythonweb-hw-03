# Використовуємо офіційний образ Python
FROM python:3.13

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY . .

RUN pip install -r requirements.txt

RUN mkdir -p /app/storage

EXPOSE 3000

ENTRYPOINT ["python", "server.py"]
