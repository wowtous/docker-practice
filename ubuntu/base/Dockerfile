FROM ubuntu:15.04
MAINTAINER Darebeat <fengwei2010@126.com>

# Build bash script
# docker build -t ubuntu:base .

# Time Zone Setting
ENV TZ "Asia/Shanghai"
ENV TERM xterm

# Modify update source.list
# Add Some tools
#    /bin/
#       ping
#       bash
#       mysql
#    /sbin/
#       ifconfig
#       route
ADD src/ /

# Install vim curl git
RUN apt-get update && apt-get install -y vim curl git && apt-get autoclean && apt-get autoremove && rm -rf /var/lib/apt/lists/*
