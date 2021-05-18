#!/bin/bash

nohup /usr/local/confluent/bin/zookeeper-server-start /usr/local/confluent/etc/kafka/zookeeper.properties &
nohup /usr/local/confluent/bin/kafka-server-start /usr/local/confluent/etc/kafka/server.properties &
/usr/local/confluent/bin/kafka-rest-start /usr/local/confluent/etc/kafka/server.properties
