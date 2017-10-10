FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y wget
#RUN wget -O- http://shadowsocks.org/debian/1D27208A.gpg | apt-key add -
#RUN echo "deb http://shadowsocks.org/debian wheezy main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y shadowsocks-libev

ENTRYPOINT ["/usr/bin/ss-server"]
