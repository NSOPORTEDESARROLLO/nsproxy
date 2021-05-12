FROM 	debian:buster-slim


RUN		apt-get update;apt-get -y upgrade;apt-get -y install squid; \
		tar -czcf /opt/squid.tgz /etc/squid;rm -f /etc/squid/*





COPY 	files/ns-start 	/usr/bin
COPY	files/squid.conf /etc/squid/