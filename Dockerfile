FROM alpine:latest

MAINTAINER "Rodrigo Ribeiro"

RUN apk --update add bind

COPY ./named.conf /etc/bind/named.conf
COPY ./named.conf.default-zones /etc/bind/named.conf.default-zones
COPY ./named.conf.local /etc/bind/named.conf.local
COPY ./db.root /etc/bind/db.root
COPY ./named.conf.options /etc/bind/named.conf.options
#COPY ./db.127  /etc/bind/db.127
#COPY ./db.0  /etc/bind/db.0
#COPY ./db.255  /etc/bind/db.255
#COPY ./db.empty  /etc/bind/db.empty
#COPY ./db.local  /etc/bind/db.local

COPY ./db.test.example.com /var/lib/bind/zones/db.test.example.com 

RUN mkdir /var/cache/bind

RUN chmod o+wr /var/cache/bind
RUN chmod o+wr /var/lib/bind/zones

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]