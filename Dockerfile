FROM ghcr.io/infrasonar/python:3.14.3
RUN apt-get update && apt-get install -y \
    tmate \
    dnsutils \
    iputils-ping \
    iputils-tracepath \
    vim \
    git \
    net-tools \
    docker.io

# Append 'set paste' to the global vimrc
RUN echo "set paste" >> /etc/vim/vimrc

COPY .tmate.conf /root/.tmate.conf
CMD ["/bin/sh", "-c", "echo 'NOTE: Detach from a session using CTRL+b followed by d.' 1>&2 && tmate -F 1>&2"]