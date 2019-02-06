FROM tomcat:9-jre8-alpine AS build

# Metadata
LABEL organization="HLN Consulting, LLC"
LABEL maintainer="Sam Nicolary<sdn@hln.com>"

# Tomcat Server
EXPOSE 8080

# get ICE, extract archive, remove archive
RUN wget https://bitbucket.org/cdsframework/ice/downloads/opencds-ice.tar.gz && tar -zxf opencds-ice.tar.gz -C /usr/local/tomcat/webapps && rm opencds-ice.tar.gz && mkdir -p /root/.opencds

# copy config files
COPY opencds.properties /root/.opencds
COPY sec.xml /root/.opencds
COPY log4j.properties /usr/local/tomcat/webapps/opencds-decision-support-service/WEB-INF/classes
COPY ice.properties /usr/local/tomcat/webapps/opencds-decision-support-service/WEB-INF/classes

# Run Tomcat server
CMD ["catalina.sh", "run"]
