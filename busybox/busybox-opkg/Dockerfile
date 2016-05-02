# build base image from busybox
# build: docker build -t busybox:opkg .
# using: docker run -it --rm --name <Your Name> busybox:opkg sh

FROM scratch
MAINTAINER Darebeat <fengwei2010@126.com>
# 设置时区
ENV TZ CST-8
ENV TERM xterm

ADD ./rootfs.tar /
ADD ./ipks /
# http://downloads.openwrt.org/snapshots/trunk/x86/64/packages/base
RUN sed -i 's/downloads.openwrt.org/openwrt.mrx.one/g' /etc/opkg.conf
RUN opkg-cl install /opt/ipks/libgcc_5.2.0-1_x86_64.ipk \
&& opkg-cl install /opt/ipks/libc_1.1.11-1_x86_64.ipk \
&& rm -rf /opt/ipks

CMD ["/bin/sh"]
