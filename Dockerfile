FROM python:3.6-alpine

ENV PYTHONUNBUFFERED=1

RUN mkdir /app
WORKDIR /app

COPY pysyslog.py /app

VOLUME [ "/data" ]

CMD ["python", "pysyslog.py"]
