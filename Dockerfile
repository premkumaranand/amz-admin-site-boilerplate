FROM nginx

## Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN rm -f /etc/nginx/conf.d/default.conf && mkdir -p /etc/nginx/sites-enabled
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/admin.conf /etc/nginx/sites-enabled/admin.conf
COPY config/api.conf /etc/nginx/sites-enabled/api.conf

RUN apt-get update
RUN apt-get -y install sudo curl procps net-tools

## Install nvm, npm, and nodejs
WORKDIR /
RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh

### Get the apps on
ADD admin-site-template/dist /var/www/html/admin-site
ADD api-template /var/www/html/api
ADD scripts/set-api.sh /var/www/html/api/set-api.sh

WORKDIR /var/www/html/api
RUN ./set-api.sh

ADD scripts/startup.sh /var/www/html/api/startup.sh

ENTRYPOINT "/var/www/html/api/startup.sh production"
