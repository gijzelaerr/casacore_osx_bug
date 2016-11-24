# -*- mode: ruby -*-
# # vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.provision :shell, :path => "provision.sh"
    config.ssh.forward_x11 = true
    config.vm.provider "virtualbox" do |v|
      v.memory = 2048  # if compiling about 1GB per CPU is adviced
      v.cpus = 2
    end
end

