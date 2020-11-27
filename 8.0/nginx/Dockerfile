FROM registry.lab.jalameta.co.id/images/php/fpm:8.0

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install software-properties-common -y \
    && add-apt-repository -y ppa:nginx/stable \
    && apt-get update \
    && apt-get install nginx supervisor -y \ 
    && rm /etc/nginx/sites-enabled/*

RUN mkdir -p /var/www/public

COPY index.php /var/www/public

COPY site.conf /etc/nginx/sites-enabled

COPY supervisor /etc/supervisor

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
