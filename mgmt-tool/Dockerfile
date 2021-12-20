FROM docker.io/centos:7.4.1708

USER root

WORKDIR /home
COPY /include/mariadb.repo mariadb.repo 
COPY /include/mongodb.repo mongodb.repo 

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 
RUN cat mariadb.repo > /etc/yum.repos.d/MariaDB.repo 
RUN cat mongodb.repo > /etc/yum.repos.d/MongoDB.repo 

RUN localedef -f UTF-8 -i ko_KR ko_KR.utf8 && ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN yum update -y \  
 && yum install -y mariadb \
 && yum install -y mongodb-org-shell \
 && yum install -y epel-release \
 && yum install -y redis \
 && yum install -y net-tools \
 && yum install -y bind-utils \
 && yum install -y telnet \
 && yum install -y nc \
 && curl -sSL https://dlcdn.apache.org/kafka/2.7.2/kafka_2.13-2.7.2.tgz -o kafka.tgz \ 
 && tar xvf kafka.tgz \
 && rm -rf /home/kafka.tgz \
 && rm -rf /home/kafka_2.12-2.6.2/bin/windows \
 && rm -rf /home/kafka_2.12-2.6.2/site-docs \
 && rm -rf /home/kafka_2.12-2.6.2/licenses \
 && rm -rf /home/kafka_2.12-2.6.2/LICENSE \
 && rm -rf /home/kafka_2.12-2.6.2/NOTICE \
 && yum install -y java-1.8.0-openjdk \

WORKDIR /usr/bin
RUN yum install -y python3 \
 && ln -sf /usr/bin/python3 /usr/bin/python

CMD ["/bin/bash"]
