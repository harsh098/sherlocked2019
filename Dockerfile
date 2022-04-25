<<<<<<< HEAD
FROM python:3.9

ENV PYTHONUNBUFFERED=1

WORKDIR /code

ADD . /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install -r requirements.txt

COPY . /code
=======
FROM python:3.7.13-slim

ENV PYTHONUNBUFFERED=1

RUN apt -y update && apt -y install apt-utils && apt -y upgrade

RUN apt -y install python3 python3-pip

RUN python3 -m pip install --upgrade pip

WORKDIR /sherlocked

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .
>>>>>>> 75ed462eecedea6f7dceeed8f21b4ac3b43a0dea
