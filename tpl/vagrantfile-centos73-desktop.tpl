# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
   config.vm.define "vagrant-centos73-desktop"
   config.vm.box = "centos73-desktop"

   config.vm.provider :virtualbox do |v, override|
     v.gui = false
     v.customize ["modifyvm", :id, "--memory", 1024]
     v.customize ["modifyvm", :id, "--cpus", 1]
     v.customize ["modifyvm", :id, "--ioapic", "on"]
     v.customize ["modifyvm", :id, "--rtcuseutc", "on"]
     v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
     v.customize ["modifyvm", :id, "--paravirtprovider", "kvm"]
     v.customize ["modifyvm", :id, "--nictype1", "virtio"]
   end
end
