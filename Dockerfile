# syntax=docker/dockerfile:1
FROM python:3.9-alpine
WORKDIR .
ENV FLASK_APP=run.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers libffi-dev build-base
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
