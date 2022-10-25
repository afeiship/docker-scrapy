# docker for scrapy
FROM python:3.10-alpine3.15

# add poetry
RUN pip install poetry

CMD ["python"]