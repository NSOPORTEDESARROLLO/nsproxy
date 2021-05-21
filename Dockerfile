FROM 	debian:buster-slim


RUN		apt-get update;apt-get -y upgrade;apt-get -y install squid; \
		tar -czcf /opt/squid-new.tgz /etc/squid;rm -rf /etc/squid; \
		mkdir /etc/squid;mkdir -p /opt/squid





COPY 	files/ns-start 	/usr/bin
COPY	files/squid.conf /opt/squid/


RUN		chmod +x /usr/bin/ns-start



ENTRYPOINT [ "/usr/bin/ns-start" ]