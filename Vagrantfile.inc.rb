# -*- mode: ruby -*-
# vi: set ft=ruby :

# Includable vagrant config to be reused

module VagrantMatrix
	def self.base_config(config, options = {})
		# Default to 4-12-2, consumers can override with: :version => "x-y-z"
		version = options[:version] || "4-12-2"

		# set hostname, if consumer hasn't
		config.vm.host_name = "vagrant-matrix.dev" unless config.vm.host_name

		# TODO: provide method for a fail back IP, if the consumer doesn't set one
		# IP the VM will run on
		# config.vm.network :hostonly, "192.168.33.10"

		# Where to get the basebox from
		config.vm.box = "sl6-matrix-64-lyte"
		config.vm.box_url = "http://lyte.id.au/vagrant/sl6-matrix-64-lyte.box"

		# Share vagrant-matrix directory as /vagrant
		config.vm.share_folder "v-root", "/vagrant", File.dirname(__FILE__)

		# What to run to configure the VM
		config.vm.provision :shell, :inline => "/vagrant/scripts/install_matrix_deps"
		# change Matrix version here if required
		config.vm.provision :shell, :inline => "/vagrant/scripts/install_matrix #{version}"
	end
end
