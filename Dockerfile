FROM ubuntu:16.04
MAINTAINER gyorodidanielg

RUN apt-get -y update \
  && apt-get -y upgrade \
  && apt-get -y install nginx \
  && apt-get -y install curl \
  && apt-get install wget \
  && wget 'https://bmszc-ujpesti.e-kreta.hu' -r -q \
  && cp -R ./bmszc-ujpesti.e-kreta.hu/* /usr/share/nginx/html \
  && apt-get -y clean
 
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

WORKDIR /root
