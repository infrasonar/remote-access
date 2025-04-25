FROM ghcr.io/infrasonar/python:3.12.9
RUN apt-get update && apt-get install -y tmate
COPY .tmate.conf /root/.tmate.conf
CMD ["tmate", "-F"]