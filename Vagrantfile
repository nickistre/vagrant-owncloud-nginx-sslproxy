# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"
  
  config.vm.hostname = "owncloudssl.vagrant.dev"
  
  config.vm.network "private_network", type: "dhcp"
  
  if Vagrant.has_plugin?("vagrant-cachier")
    # Configure cached packages to be shared between instances of the same base box.
    # More info on http://fgrehm.viewdocs.io/vagrant-cachier/usage
    config.cache.scope = :box
  end
  
  if Vagrant.has_plugin?("landrush")
    config.landrush.enabled = true
  end
  
  # Copy files needed for install
  config.vm.provision "file", source: "sslproxy", destination: "/tmp/sslproxy"
  config.vm.provision "file", source: "ssl/owncloudssl.vagrant.dev.crt", destination: "/tmp/owncloudssl.vagrant.dev.crt"
  config.vm.provision "file", source: "ssl/owncloudssl.vagrant.dev.key", destination: "/tmp/owncloudssl.vagrant.dev.key"
  config.vm.provision "file", source: "ssl/root.crt", destination: "/tmp/root.crt"
  
  
  config.vm.provision "shell", path: "install_nginx.sh"
  config.vm.provision "shell", path: "setup_root_cert.sh"
  config.vm.provision "shell", path: "setup_nginx_sslproxy.sh"
end
