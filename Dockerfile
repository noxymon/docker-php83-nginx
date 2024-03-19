FROM trafex/php-nginx:3.5.0
LABEL authors="noxymon"

USER root
COPY docker/config/php.ini  ${PHP_INI_DIR}/php.ini
COPY docker/config/nginx.conf /etc/nginx/conf.d/server.conf

RUN apk update && \
    apk add --no-cache \
    php83-pecl-imagick \
    php83-bcmath \
    php83-pecl-memcached \
    php83-pecl-redis \
    php83-xml \
    php83-xmlreader \
    php83-xmlwriter \
    php83-mysqli \
    php83-mysqlnd \
    php83-pdo_mysql \
    php83-pdo \
    php83-pdo_pgsql \
    php83-simplexml \
    php83-iconv \
    php83-zip

USER nobody