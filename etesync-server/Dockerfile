FROM docker.io/python:3.10-alpine

WORKDIR server

RUN apk add --no-cache --virtual .build-deps libseccomp coreutils gcc libc-dev libffi-dev make
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir cython
RUN pip install --no-cache-dir --progress-bar off -r requirements.txt
RUN apk del --purge .build-deps

COPY . .
