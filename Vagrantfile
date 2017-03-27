# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 80, host: 8000

  config.vm.provision "shell", path: "setup-apache.sh"
  config.vm.provision "shell", path: "setup-php.sh"
  config.vm.provision "shell", path: "setup-mysql.sh"
  config.vm.provision "shell", path: "setup-phpmyadmin.sh"
  
end
