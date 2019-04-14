FROM registry.lab.jalameta.co.id/images/php/fpm:7.3

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install software-properties-common -y \
    && add-apt-repository -y ppa:nginx/$nginx \
    && apt-get update \
    && apt-get install nginx -y \ 
    && rm /etc/nginx/sites-enabled/*