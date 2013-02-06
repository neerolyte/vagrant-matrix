# -*- mode: ruby -*-
# vi: set ft=ruby :

# The Vagrantfile lets Vagrant know:
#   * where to get the base box from
#   * what ip to use
#   * how to configure the machine

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Default the hostname to <profile>.sitemig.dev
  config.vm.host_name = File.basename(File.dirname(__FILE__))+".sitemig.dev"
  # IP the VM will run on
  config.vm.network :hostonly, "192.168.33.10"
  # Where to get the basebox from
  config.vm.box = "sl6-matrix-64-lyte"
  config.vm.box_url = "http://lyte.id.au/vagrant/sl6-matrix-64-lyte.box"
  # Directories to share
  config.vm.share_folder "v-root", "/vagrant", "."
  # What to run to configure the VM
  config.vm.provision :shell, :inline => "/vagrant/scripts/install_matrix_deps"
  # change Matrix version here if required
  config.vm.provision :shell, :inline => "/vagrant/scripts/install_matrix 4-10-3"
end
