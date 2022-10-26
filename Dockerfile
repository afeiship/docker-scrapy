# docker for scrapy
FROM python:3.10-alpine
ENV PIP_DISABLE_PIP_VERSION_CHECK=on

RUN apk update && apk upgrade
RUN apk add --no-cache bash\
                       pkgconfig \
                       git \
                       gcc \
                       openldap \
                       libcurl \
    && rm -rf /var/cache/apk/*

# add poetry
RUN pip install poetry

# add app
WORKDIR /app
COPY . /app

RUN cd /app && poetry install

CMD ["./entrypoint.sh"]