# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Base Box
  config.vm.box = "ubuntu/trusty64"

  # Hostname and networking
  config.vm.hostname = "vagrant-lamp-dev"
  config.vm.network :private_network, ip: "192.168.40.7"
  config.hostsupdater.aliases = %w(lamp.dev)
  config.hostsupdater.remove_on_suspend = true

  # Virtualbox settings
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", 1024]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.provision :shell, :path => "bootstrap.sh"
end
