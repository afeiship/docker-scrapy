# docker for scrapy
FROM python:3.10-alpine3.15

# add poetry
RUN pip install poetry
ENV PIP_DISABLE_PIP_VERSION_CHECK=on

WORKDIR /app

# copy app
COPY poetry.lock pyproject.toml /app/
COPY . /app

RUN poetry install

