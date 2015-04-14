# encoding: utf-8
# This file originally created at http://rove.io/79957bd4d8268ca376d3da3e1f5d6db8

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  config.ssh.forward_agent = true
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provider "virtualbox" do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #   # Change dns.
    vb.customize ['modifyvm', :id, "--natdnshostresolver1", "on"]
  #   # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.synced_folder "./project", "/vagrant", type: "nfs"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe :apt
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'rbenv::user'
    chef.add_recipe 'mongodb::default'
    chef.add_recipe 'nodejs'
    chef.add_recipe 'python'
    chef.add_recipe 'git'
    chef.add_recipe 'redis'
    chef.add_recipe 'vim'
    chef.add_recipe "locale"
    # Image handling
    chef.add_recipe "imagemagick"
    chef.add_recipe "imagemagick::devel"
    chef.json = {
      :rbenv   => {
        :user_installs => [
          {
            :user   => "vagrant",
            :rubies => [
              "2.0.0-p481"
            ],
            :global => "2.0.0-p481",
          }
        ]
      },
      :mongodb => {
        :dbpath  => "/var/lib/mongodb",
        :logpath => "/var/log/mongodb",
        :port    => "27017"
      },
      :git     => {
        :prefix => "/usr/local"
      },
      :redis   => {
        :bind        => "127.0.0.1",
        :port        => "6379",
        :config_path => "/etc/redis/redis.conf",
        :daemonize   => "yes",
        :timeout     => "300",
        :loglevel    => "notice"
      },
      :vim     => {
        :extra_packages => [
          "vim-rails"
        ]
      }
    }
  end

  config.vm.provision :shell, :path => "bootstrap/init.sh"
end
