@echo off
call mvn clean package
call docker build -t com.mycompany/UMB-MAVEN .
call docker rm -f UMB-MAVEN
call docker run -d -p 9080:9080 -p 9443:9443 --name UMB-MAVEN com.mycompany/UMB-MAVEN