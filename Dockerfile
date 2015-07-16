# Version 0.0.1

# docker build -t yonh/sshd .


#Run : run -p 1234:1234 –name git_server git:v1
#Create project : cd /home/git && mkdir projet.git && cd projet.git && git –bare init
#Clone : git clone ssh://git@yourserver:1234/home/git/yourproject.git

# basic image
FROM ubuntu:14.04
MAINTAINER yonh "azssjli@163.com"
ENV REFERSHED_AT 2015-07-13

RUN apt-get update
RUN apt-get install -y openssh-server && rm -rf /var/lib/apt/lists/* && mkdir /var/run/sshd 

ENTRYPOINT ["/usr/sbin/sshd", "-D"]

EXPOSE 22


