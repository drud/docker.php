FROM bitnami/minideb:jessie

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update && apt-get --no-install-recommends --no-install-suggests -y install \
    procps \
    curl \
    ca-certificates \
    wget && \
    echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list && \
    echo 'deb-src http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list && \
    wget https://www.dotdeb.org/dotdeb.gpg && \
    apt-key add dotdeb.gpg && \
    rm dotdeb.gpg && \
    apt-get update && apt-get --no-install-recommends --no-install-suggests -y install \
    less \
    git \
    mysql-client \
    php7.0-curl \
    php7.0-cgi \
    php7.0-cli \
    php7.0-common \
    php7.0-fpm \
    php7.0-gd \
    php7.0-json \
    php7.0-mysql \
    php7.0-mbstring \
    php7.0-xml \
    php7.0-xmlrpc \
    php7.0-mcrypt \
    php7.0-opcache \
    php7.0-soap \
    php7.0-readline && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
    