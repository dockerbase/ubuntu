# VERSION 1.2
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Ubuntu Image Container

FROM ubuntu:14.04

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# Set the locale settings
RUN     locale-gen en_US.UTF-8 && \
        dpkg-reconfigure locales

# Run ubuntu script
ADD     ubuntu.sh .
RUN     ./ubuntu.sh

# Set environment variables.
ENV 	HOME /root

# Define working directory.
WORKDIR /root
