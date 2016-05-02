FROM alpine:glibc
MAINTAINER Darebeat <fengwei2010@126.com>

ADD apks/jdk7 /opt/jdk7
ENV JAVA_HOME=/opt/jdk7
RUN ln -s $JAVA_HOME/bin/java /usr/bin/java
