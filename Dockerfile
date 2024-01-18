FROM python:3.12.1-slim

COPY . /app/
WORKDIR /app/
RUN apt-get update && \
    apt-get upgrade -y 

COPY ./requirements-dev.txt /app/requirements-dev.txt
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements-dev.txt

RUN useradd app
RUN chown -R app /app
USER app

EXPOSE 8080
CMD python manage.py runserver 0.0.0.0:8080
