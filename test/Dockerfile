FROM ubuntu:14.04

RUN apt-get update && apt-get install -y -q curl apt-transport-https
RUN curl https://repo.varnish-cache.org/GPG-key.txt | apt-key add -
RUN echo "deb https://repo.varnish-cache.org/ubuntu/ precise varnish-4.0" >> /etc/apt/sources.list.d/varnish-cache.list
RUN echo "deb-src https://repo.varnish-cache.org/ubuntu/ precise varnish-4.0" >> /etc/apt/sources.list.d/varnish-cache.list
RUN apt-get update && apt-get install -y -q varnish

CMD /test.sh
