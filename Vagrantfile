# -*- mode: ruby -*-
# vi: set ft=ruby :

# The Vagrantfile lets Vagrant know:
#   * where to get the base box from
#   * what ip to use
#   * how to configure the machine

# This require assumes that vagrant-matrix is one directory below the main
# Vagrantfile
require File.join(File.dirname(__FILE__), "/vagrant-matrix/Vagrantfile.inc.rb")

Vagrant::Config.run do |config|
	# Here we inherit from some base portable config
	VagrantMatrix.base_config(
		config,
		:version => "4-12-2"
	)

	config.vm.host_name = "vagrant-matrix.dev"

	# IP the VM will run on
	config.vm.network :hostonly, "192.168.33.10"
end
