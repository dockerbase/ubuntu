# VERSION 1.0
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Ubuntu Image Container
# TO_BUILD:       $ sudo docker build -rm -t weimed/docker-jenkins .
# TO_RUN:         $ sudo docker run -p 8080:8080 --name jenkins weimed/docker-jenkins

FROM ubuntu:14.04

MAINTAINER Richad Lee "lifuzu@gmail.com"

ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# Update
RUN     apt-get update
RUN     apt-get install -y --no-install-recommends wget git curl zip less nano vim
RUN     apt-get clean

# Set environment variables.
ENV 	HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
