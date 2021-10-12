FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=ASIA/HO_CHI_MINH
RUN apt-get update && \
    apt-get install -y tzdata nuget mono-devel mono-xbuild git wget openjdk-11-jre && \ 
    nuget update -self 
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb &&\
    rm packages-microsoft-prod.deb
RUN apt-get update && \
    apt-get install -y dotnet-sdk-5.0 
RUN nuget restore; exit 0
RUN dotnet tool install --global dotnet-sonarscanner
ENV PATH="/root/.dotnet/tools:${PATH}"


