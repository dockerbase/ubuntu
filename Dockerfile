# AUTHOR:         Richard Li <lifuzu@gmail.com>
# DESCRIPTION:    Ubuntu Image

FROM ubuntu:18.04

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# Set the locale settings
ADD     locals.sh /dockerbase/
RUN     /dockerbase/locals.sh

# Run ubuntu script
ADD     ubuntu.sh /dockerbase/
RUN     /dockerbase/ubuntu.sh

# Set environment variables.
ENV 	HOME /root

# Define working directory.
WORKDIR /root
