FROM python:3.6.1-alpine

RUN apk update \
  && apk add \
    build-base \
    postgresql \
    postgresql-dev \
    libpq

ENV PYTHONUNBUFFERED 1

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .
