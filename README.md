# docker-scrapy
> Docker for scrapy.

## commands
```shell
# build docker image
docker build -t scrapy:v1 .
# run docker container
docker run -it --rm --name scrapy -v $(pwd):/app scrapy:v1
```