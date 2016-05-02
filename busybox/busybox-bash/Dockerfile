FROM busybox:opkg
MAINTAINER Darebeat <fengwei2010@126.com>
ADD ./ipks/ /
# RUN opkg-install bash
RUN opkg-cl install /*.ipk && rm -rf /*.ipk
CMD ["/bin/bash"]
