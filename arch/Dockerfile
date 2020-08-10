FROM archlinux:latest

ENV TERM=linux

# updating & installing packages
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm \
        git \ 
        unzip \ 
        php \
        php-apcu \
        php-cgi \
        php-dblib \
        php-fpm \
        php-gd \
        php-imagick \
        php-intl \
        php-odbc \
        php-pgsql \
        php-redis \
        php-sqlite \
        composer \
    && pacman -Scc --noconfirm

ARG EXTENSIONS="bcmath bz2 curl exif gd iconv mysqli pdo_pgsql pdo_sqlite pdo_pgsql sqlite3 zip"

# enabling extensions
COPY ./script /var/tmp
RUN chmod +x /var/tmp/enable_extension.sh && /var/tmp/enable_extension.sh

# install laravel envoy
RUN composer global require hirak/prestissimo laravel/envoy \
    && composer clear-cache \
    && ln -s /root/.composer/vendor/laravel/envoy/bin/envoy /usr/bin/envoy

CMD ["php", "-a"]
