FROM apache/spark:3.3.1

USER root

# Update apt dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget ssh-client

RUN wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-j_8.0.31-1debian11_all.deb
RUN apt-get install -f ./mysql-connector-j_8.0.31-1debian11_all.deb

RUN rm ./mysql-connector-j_8.0.31-1debian11_all.deb
RUN ln -sf /usr/share/java/mysql-connector* /opt/spark/jars

ENV PATH="${PATH}:/opt/spark/bin:/opt/spark/sbin"

RUN mkdir /opt/spark/logs
RUN chown 185.185 /opt/spark/logs
RUN mkdir /opt/spark/.ssh
RUN chown 185.185 /opt/spark/.ssh

USER 185

ENTRYPOINT ["/opt/entrypoint.sh"]
