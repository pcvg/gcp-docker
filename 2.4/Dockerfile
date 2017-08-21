FROM ruby:2.4

MAINTAINER Ain Tohvri <ain.tohvri@savings-united.com>

RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" \
  && echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
  && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - \
  && apt-get update \
  && apt-get install -y google-cloud-sdk \
  && apt-get autoremove -y

RUN wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O $HOME/cloud_sql_proxy \
  && chmod +x $HOME/cloud_sql_proxy
  && mkdir /cloudsql
