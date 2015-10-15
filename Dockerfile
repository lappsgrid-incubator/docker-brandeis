# lappsgrid/brandeis
#
# This image extends the tomcat7 image and adds the Lapps services running
# on the Brandeis node.

FROM lappsgrid/tomcat7

ENV TERM=xterm

USER root
#ADD ./brandeis-services.tgz /var/lib/tomcat7/webapps
ADD ./opennlp-web-service#2.0.0.war /var/lib/tomcat7/webapps/opennlp-web-service#2.0.0.war
ADD ./startup.sh /usr/bin/startup
ADD ./tail-log.sh /usr/bin/taillog
ADD ./waitforlog.sh /usr/bin/waitforlog
ADD ./waitforstart.sh /usr/bin/waitforstart

RUN chmod ug+x /usr/bin/taillog && \
	chmod ug+x /usr/bin/waitforlog &&  \
	chmod ug+x /usr/bin/waitforstart 
	
CMD ["/usr/bin/startup"]
