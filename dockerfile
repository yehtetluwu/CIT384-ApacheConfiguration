FROM ubuntu:latest
ENV DEBIAN_FRONTEND=nonintercative

# Installing necessary items
RUN apt-get update
RUN apt-get -y install vim
RUN apt-get -y install sudo
RUN apt-get -y install apache2
RUN apt-get -y install curl

# Enabling necessary modules
RUN a2enmod userdir
RUN a2enmod autoindex
RUN a2enmod rewrite
RUN a2enmod alias
RUN a2enmod vhost_alias
RUN a2enmod auth_basic

# Adding myself/admin
RUN sudo adduser yhl50756
RUN sudo passwd -d yhl50756
RUN sudo usermod -aG sudo yhl50756

# Setting the working directory                                  
WORKDIR /home/yhl50756/public_html

# Making directory for marketing team
RUN mkdir /var/www/marketing
COPY index.html /var/www/marketing
COPY about.html /var/www/marketing
COPY team.html /var/www/marketing
COPY style.css /var/www/marketing
COPY img /var/www/marketing/img/

# Promotion page for marketing team
RUN mkdir /var/www/marketing/promotions
COPY promotions.html /var/www/marketing/promotions
COPY img /var/www/marketing/promotions/img/
COPY style.css /var/www/marketing/promotions

# Copying necessary files to DocumentRoot directory               
COPY index.html .
COPY about.html .
COPY team.html .
COPY style.css . 
COPY promotions.html .                              
COPY img ./img/
COPY index.html /var/www/html/index.html
COPY about.html /var/www/html/about.html
COPY team.html /var/www/html/team.html
COPY style.css /var/www/html/style.css                      
COPY forbidden.html /var/www/html/forbidden.html
COPY not-found.html /var/www/html/not-found.html
COPY promotions.html /var/www/html/promotions.html
COPY img /var/www/html/img/
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Adding user1
RUN sudo adduser zen1
RUN sudo passwd -d zen1
RUN sudo usermod -aG sudo zen1
WORKDIR /home/zen1/public_html
COPY zen1.html .
COPY about.html .
COPY team.html .
COPY style.css .
COPY promotions.html .
COPY img ./img/

# Adding user2
RUN sudo adduser zen2
RUN sudo passwd -d zen2
RUN sudo usermod -aG sudo zen2
WORKDIR /home/zen2/public_html
COPY zen2.html .
COPY about.html .
COPY team.html .
COPY style.css .
COPY promotions.html .
COPY img ./img/

# Adding user3
RUN sudo adduser zen3
RUN sudo passwd -d zen3
RUN sudo usermod -aG sudo zen3
WORKDIR /home/zen3/public_html
COPY zen3.html .
COPY about.html .
COPY team.html .
COPY style.css .
COPY promotions.html .
COPY img ./img/

# Adding user4
RUN sudo adduser zen4
RUN sudo passwd -d zen4
RUN sudo usermod -aG sudo zen4
WORKDIR /home/zen4/public_html
COPY zen4.html .
COPY about.html .
COPY team.html .
COPY style.css .
COPY promotions.html .
COPY img ./img/

# Adding user5
RUN sudo adduser zen5
RUN sudo passwd -d zen5
RUN sudo usermod -aG sudo zen5
WORKDIR /home/zen5/public_html
COPY zen5.html .
COPY about.html .
COPY team.html .
COPY style.css .
COPY promotions.html .
COPY img ./img/

# Adding a group for marketing team
RUN sudo groupadd  marketing

# Add in other directives as needed
LABEL Maintainer: "ye.lu.273@my.csun.edu"

EXPOSE 80
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
