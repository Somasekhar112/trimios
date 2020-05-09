#! /bin/bash

yum install openjdk-1.8

java -version

vi /etc/profile     #!/bin/sh          export JAVA_HOME=/opt/java            export PATH=$JAVA_HOME/bin:$PATH  

javac -version

cd /opt

wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.34/bin/apache-tomcat-9.0.34.tar.gz

tar -xvf apache-tomcat-9.0.34.tar.gz

cd apache-tomcat-9.0.34

cd conf

chmod 655 server.xml

chmod 655 tomcat-users.xml

nano server.xml   #change port number of tomcat server

nano tomcat-users.xml  

cd ..

cd webapps

cd manager

cd META-INF

nano context.xml

vi /etc/systemd/system/tomcat.service 

sudo systemctl daemon-reload

sudo systemctl start tomcat

sudo systemctl enable tomcat

systemctl status tomcat


