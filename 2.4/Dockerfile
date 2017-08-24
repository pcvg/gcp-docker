FROM ruby:2.4

MAINTAINER Ain Tohvri <ain.tohvri@savings-united.com>

RUN apt-get update
RUN apt-get install -y lsb-release
RUN echo "deb http://packages.cloud.google.com/apt `lsb_release -cs` main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update
RUN apt-get install -y google-cloud-sdk
RUN apt-get autoremove -y

RUN wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O $HOME/cloud_sql_proxy
RUN chmod +x $HOME/cloud_sql_proxy
RUN mkdir /cloudsql
