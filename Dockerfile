#syntax=docker/dockerfile:1

FROM python:slim-buster

WORKDIR /backend

COPY /backend/requirements.txt requirements.txt

CMD ["python3","-m","venv","venv"]

CMD ["source","venv\bin\activate"]

RUN pip3 install -r requirements.txt

COPY /backend/. .

CMD ["python3","main.py"]


FROM node:latest

WORKDIR /frontend

COPY /frontend/package*.json ./

COPY /frontend/yarn*.lock ./

RUN npm install

COPY /frontend/. .

CMD ["yarn", "start"]

