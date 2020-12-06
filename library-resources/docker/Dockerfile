FROM jboss/wildfly:21.0.1.Final
MAINTAINER "Jesus Sanchez" "jesusgabriel2525@gmail.com"
ARG BUILD_VERSION
ADD standalone.xml /opt/jboss/wildfly/standalone/configuration/
ADD library-services-${BUILD_VERSION}.war /opt/jboss/wildfly/standalone/deployments/
ADD postgresql-42.2.10.jar /opt/jboss/wildfly/standalone/deployments/
EXPOSE 8080 9990 8009

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone.xml"]
