FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git \
  python3-yaml
  
# RUN pip3 install PyYAML -> does not work and generates the error 1

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
