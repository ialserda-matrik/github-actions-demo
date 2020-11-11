FROM openjdk:11-jre-slim

COPY target/github-actions-demo-service.jar /opt/service.jar
COPY run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

USER 1000:1000
CMD /opt/run.sh
