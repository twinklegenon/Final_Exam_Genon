FROM ubuntu
MAINTAINER twinkle <qtsgenon@tip.edu.ph>

#skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt-get update; apt dist-upgrade -y

# install webserver
RUN apt install -y mariadb

#set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND

# install nagios
RUN apt install -y nagios4
RUN apt install -y nagios4-core
