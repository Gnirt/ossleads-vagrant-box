#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install qt5-default libqt5webkit5-dev
cd /vagrant
/home/vagrant/.rbenv/bin/rbenv init
source ~/.profile
gem install --no-ri --no-rdoc bundler
/home/vagrant/.rbenv/bin/rbenv rehash
/home/vagrant/.rbenv/shims/bundler
