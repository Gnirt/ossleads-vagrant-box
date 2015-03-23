#!/usr/bin/env bash

sudo apt-get update
cd /vagrant
/home/vagrant/.rbenv/bin/rbenv init
source ~/.profile
gem install --no-ri --no-rdoc bundler
/home/vagrant/.rbenv/bin/rbenv rehash
/home/vagrant/.rbenv/shims/bundler
