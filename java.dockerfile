FROM ubuntu:14.04
MAINTAINER "maurice@mauricecarey.com"
RUN apt-get -y install software-properties-common && apt-get clean
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN /bin/echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN /bin/echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 seen true  | /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java8-installer oracle-java8-set-default && apt-get clean && rm -rf /var/cache/oracle-jdk8-installer
RUN ln -s /usr/lib/jvm/java-8-oracle/ /usr/lib/jvm/default-java

# Set JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle
