# Console app
simple .NET core app

# Docker-compose:
Run docker-compose up to deploy jenkins, sonarqube and nexus via docker-compose file
The urls of those services:
- Jenkins: 192.168.75.132:8080
- SonarQube: 192.168.75.132:9000
- Nexus: 192.168.75.132:8081
- 
# Docker
This project using a docker images with custom build to use the dotnet command and dotnet-sonarscanner to build and run .NET core on linux base environment. The details
of image can be found in dockerfile.

# Jenkins
Since this project use a docker container to do all the task, we only needed Docker pipeline plugin

# Sonar
We need login token for jenkins to login into sonar
- Go to User > My Account > Security and generate new token use for login 

# Nexus
We need api key to push nuget package to Nexus repo
- Go to Account > Nuget API Key > generate key
Then, we need to manage realms security
- Go to Administration > Security > Realms > Active NuGet API Key Realm
Run pipeline with jenkinsfile within this repo
