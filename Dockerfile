# docker for scrapy
FROM ubuntu:22.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
    sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
    apt-get clean && \
    apt-get update

ENV TZ=Asia/ShangHai \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install tzdata


RUN apt-get install software-properties-common -y && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update

RUN apt-get update -y && \
    apt-get install -y python3.10 python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir numpy poetry scrapy

# add app
WORKDIR /app

# entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]