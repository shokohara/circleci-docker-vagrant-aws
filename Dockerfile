FROM ubuntu:14.04.3

ENV DEBIAN_FRONTEND noninteractive
ENV PACKER_VERSION 0.8.6
RUN apt-get install -y wget unzip &&\
  wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb &&\
  sudo dpkg -i vagrant_1.8.1_x86_64.deb &&\
  rm vagrant_1.8.1_x86_64.deb &&\
  vagrant plugin install vagrant-aws
