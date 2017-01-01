FROM ubuntu:16.04
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 0.1

# expose http & https port
EXPOSE 80 443

# get updates
RUN apt-get update -y && apt-get upgrade -y && apt-get clean

# install apache 2.4
RUN apt-get -y install apache2

# install php 7
RUN apt-get -y install php7.0 libapache2-mod-php7.0
RUN apt-get -y install php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache  php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-gettext

# # install php my admin
# RUN apt-get -y install phpmyadmin

# set ownership of html dir to www-data
RUN chown -R www-data:www-data /var/www

# enable apache mod_rewrite
RUN a2enmod rewrite

# set command to execute on start
CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
