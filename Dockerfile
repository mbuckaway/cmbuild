FROM ubuntu:xenial

RUN apt-get update \
  && apt-get install -y\
    git wget \
    python3.5-venv \
    python3-pip \
    vim.tiny \
    libjpeg9 libtiff5 libsdl2-2.0-0 libnotify-bin freeglut3 libsm6 libgtk-3-0 libwebkitgtk-3.0-0 libgstreamer1.0-0 libgtk-3-dev

COPY docker-entrypoint-init.d/* /docker-entrypoint-init.d/
COPY build/entrypoint.sh /usr/sbin/entrypoint.sh

CMD [ "/usr/sbin/entrypoint.sh" ]
