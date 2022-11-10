# docker for scrapy
FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get install -y python3.7 python3-pip python3.7-dev
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir numpy poetry scrapy

# add app
WORKDIR /app

# entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]