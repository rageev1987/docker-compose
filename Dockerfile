FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install default-jdk -y
RUN apt-get install git -y
RUN mkdir /home/dz1/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /home/dz1/boxfuse-sample-java-war-hello
WORKDIR /home/dz1/boxfuse-sample-java-war-hello/
RUN mvn package
