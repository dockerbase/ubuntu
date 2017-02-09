# VERSION 1.3
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Li <lifuzu@gmail.com>
# DESCRIPTION:    Ubuntu Image Container

FROM ubuntu:16.04

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# Set the locale settings
RUN     locale-gen en_US.UTF-8 && \
        dpkg-reconfigure locales

# Run ubuntu script
ADD     ubuntu.sh /dockerbase/
RUN     /dockerbase/ubuntu.sh

# Set environment variables.
ENV 	HOME /root

# Define working directory.
WORKDIR /root
