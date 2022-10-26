# docker for scrapy
FROM python:3.10-alpine
ENV PIP_DISABLE_PIP_VERSION_CHECK=on

RUN apk update && apk upgrade
RUN apk add --no-cache bash \
                       pkgconfig \
                       git \
                       gcc \
                       openldap \
                       libcurl \
                       gpgme-dev \
                       libc-dev \
    && rm -rf /var/cache/apk/*

# add poetry
RUN pip install poetry

# add app
WORKDIR /app

# entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]