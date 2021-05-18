FROM centos:7.4.1708
LABEL maintainer="chathuwhu@gmail.com"

RUN yum -y install sudo \
    && yum -y install java-1.8.0-openjdk \
    && yum -y install unzip \
    && curl -O http://packages.confluent.io/archive/6.1/confluent-community-6.1.1.zip \
    && sudo unzip confluent-community-6.1.1.zip -d /usr/local \
    && sudo ln -s /usr/local/confluent-6.1.1 /usr/local/confluent


COPY kafka/entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh
CMD ["/opt/entrypoint.sh"]


#CMD nohup /usr/local/confluent/bin/zookeeper-server-start /usr/local/confluent/etc/kafka/zookeeper.properties & \
#    && /usr/local/confluent/bin/kafka-server-start /usr/local/confluent/etc/kafka/server.properties

#CMD sudo nohup /usr/local/confluent/bin/zookeeper-server-start /usr/local/confluent/etc/kafka/zookeeper.properties &
#CMD sudo /usr/local/confluent/bin/kafka-server-start /usr/local/confluent/etc/kafka/server.properties
#RUN sudo nohup /usr/local/confluent/bin/schema-registry-start /usr/local/confluent/etc/schema-registry/schema-registry.properties &
#RUN sudo nohup /usr/local/confluent/bin/control-center-start /usr/local/confluent/etc/confluent-control-center/control-center.properties &
#CMD sudo /usr/local/confluent/bin/kafka-rest-start /usr/local/confluent/etc/kafka/server.properties