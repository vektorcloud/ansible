FROM vektorlab/python2:latest

RUN addgroup -g 400 ansible && \
    adduser -D -u 400 -G ansible ansible

COPY requirements.txt /requirements.txt
RUN apk add --no-cache build-base && \
    pip install -r /requirements.txt && \
    apk del build-base
