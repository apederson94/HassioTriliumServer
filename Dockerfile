ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

WORKDIR /

RUN apt update && \
    apt install -y libpng16-16 \
    libpng-dev \
    pkg-config \
    autoconf \
    libtool \
    build-essential \
    nasm \
    libx11-dev \
    libxkbfile-dev \
    nodejs \
    npm \
    git

COPY start.sh /app/start.sh
ENTRYPOINT ["/app/start.sh"]

LABEL io.hass.version="VERSION" io.hass.type="addon" io.hass.arch="armhf|aarch64|i386|amd64"
