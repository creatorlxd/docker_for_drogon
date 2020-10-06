FROM ubuntu:18.04
MAINTAINER creatorlxd

RUN	echo "root:root" | chpasswd
RUN echo -e "LANG=\"en_US.UTF-8\"" >/etc/default/local
RUN	apt-get update
ADD	build.sh .
ADD start.sh .
RUN	sh build.sh

EXPOSE 22
EXPOSE 80

ENTRYPOINT sh ./start.sh && /bin/bash
