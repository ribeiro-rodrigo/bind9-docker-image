FROM alpine:latest

MAINTAINER "Rodrigo Ribeiro"

RUN apk --update add bind

COPY ./named.conf /etc/bind/named.conf
COPY ./named.conf.default-zones /etc/bind/named.conf.default-zones
COPY ./named.conf.local /etc/bind/named.conf.local
COPY ./db.root /etc/bind/db.root
COPY ./named.conf.options /etc/bind/named.conf.options

COPY ./db.test.example.com /var/lib/bind/zones/db.test.example.com

RUN mkdir /var/cache/bind

RUN chmod o+wr /var/cache/bind
RUN chmod o+wr /var/lib/bind/zones

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]