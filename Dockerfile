FROM bitnami/minideb:jessie

ENV DEBIAN_FRONTEND noninteractive

# @TODO remove ca-certificates from this layer if possible for smaller img
RUN apt-get update && apt-get --no-install-suggests -y install \
    procps \
    curl \
    wget && \
    echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list && \
    echo 'deb-src http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list && \
    wget https://www.dotdeb.org/dotdeb.gpg && \
    apt-key add dotdeb.gpg && \
    rm dotdeb.gpg && \
    apt-get update && apt-get --no-install-recommends --no-install-suggests -y install \
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
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
