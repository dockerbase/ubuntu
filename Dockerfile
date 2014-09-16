# VERSION 1.1
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Ubuntu Image Container

FROM ubuntu:14.04

MAINTAINER Richad Lee "lifuzu@gmail.com"

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# Set the locale settings
RUN     locale-gen en_US.UTF-8
RUN     dpkg-reconfigure locales

# Enable Ubuntu Universe and Multiverse.
RUN	sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
RUN	sed -i 's/^#\s*\(deb.*multiverse\)$/\1/g' /etc/apt/sources.list

# Update
RUN     apt-get update

# Install HTTPS support for APT.
RUN     apt-get install -y --no-install-recommends apt-transport-https ca-certificates

# Install add-apt-repository
RUN     apt-get install -y --no-install-recommends  software-properties-common

# Upgrade all packages.
RUN	apt-get dist-upgrade -y --no-install-recommends

# Install some common components
RUN     apt-get install -y --no-install-recommends wget git curl zip less nano vim

# clean up
RUN     apt-get clean
RUN     rm -rf /tmp/* /var/tmp/*
RUN     rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV 	HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
