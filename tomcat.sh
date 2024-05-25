sudo yum update -y
#installing java11 as prerequest
amazon-linux-extras install java-openjdk11 -y
#downloading tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.24/bin/apache-tomcat-10.1.24.tar.gz
#un tar the file 
tar -zxvf apache-tomcat-10.1.24.tar.gz
#adding the manager-gui and manager-script roles in vim apachemaven/conf/tomcat-ser.xml
vim apache-tomcat-10.1.24/conf/tomcat-users.xml
   <role rolename="manager-gui"/>
  <role rolename="manager-script"/>
  <user username="tomcat" password="sandeep01" roles="manager-gui,manager-script"/>
#deleting lines 21 and 22 in vim apa/webapps/manager/META-INF/context.xml
vim apache-tomcat-10.1.24/webapps/manager/META-INF/context.xml
#starting the tomcat server path apa/bin/startup.sh
sh apache-tomcat-10.1.24/bin/startup.sh
