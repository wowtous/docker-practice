FROM busybox:opkg
MAINTAINER Darebeat <fengwei2010@126.com>

RUN opkg-install nginx

RUN mkdir /var/lib/nginx
ADD nginx.conf /etc/nginx/nginx.conf
RUN mkdir /usr/html
ADD index.html /usr/html/index.html

EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
