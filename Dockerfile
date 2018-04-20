FROM ubuntu:latest
MAINTAINER Francois Couderc "fcouderc@cisco.com"
RUN apt-get update
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools
RUN apt-get install -y vim
RUN apt-get install -y apache2
RUN apt-get install -y php
RUN apt-get install -y libapache2-mod-php
RUN apt-get install -y curl
COPY run_processes.sh /sbin
EXPOSE 80
CMD ["/sbin/run_processes.sh"]
