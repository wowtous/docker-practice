FROM busybox:opkg
MAINTAINER Darebeat <fengwei2010@126.com>

ADD ./ipks /ipks
RUN mkdir /mnt/data && mkdir /mnt/data/mysql && mkdir /mnt/data/tmp
RUN opkg-cl install /ipks/*.ipk && rm -rf /ipks
CMD ["/usr/bin/mysqld"]
