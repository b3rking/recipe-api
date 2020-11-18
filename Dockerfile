FROM python:3.7-alpine
LABEL author=" Berking Da Quan"

ENV PYTHONUNBUFFERED 1

COPY ./requirement.txt /requirement.txt
RUN pip install -r /requirement.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser user
USER user