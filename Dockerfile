FROM ubuntu:24.04


RUN useradd -ms /bin/bash admin &&\
    mkdir /workspace && chown admin:admin /workspace
RUN mkdir -p /workspace/kafka/logs && chown -R admin:admin /workspace/kafka/logs

WORKDIR /workspace
USER admin

COPY ./jdk-17 /workspace/java
COPY ./kafka_2.13-4.1.1 /workspace/kafka


ENV JAVA_HOME=/workspace/java
ENV PATH=$PATH:$JAVA_HOME/bin

ENV KAFKA_HOME=/workspace/kafka
ENV PATH=$PATH:$KAFKA_HOME/bin