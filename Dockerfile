# docker for scrapy
FROM python:3.10-alpine3.15
ENV PIP_DISABLE_PIP_VERSION_CHECK=on

# add poetry
RUN pip install poetry

# add app
WORKDIR /app
COPY . /app

RUN cd /app && poetry install

CMD ["./entrypoint.sh"]