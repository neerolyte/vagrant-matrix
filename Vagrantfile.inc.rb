# -*- mode: ruby -*-
# vi: set ft=ruby :

# Includable vagrant config to be reused

module VagrantMatrix
	def self.base_config(config, options = {})
		# set hostname, if consumer hasn't
		config.vm.host_name = "vagrant-matrix.dev" unless config.vm.host_name

		# Where to get the basebox from
		config.vm.box = "sl6-matrix-64-lyte"
		config.vm.box_url = "http://lyte.id.au/vagrant/sl6-matrix-64-lyte.box"

		# Share vagrant-matrix directory as /vagrant/matrix
		config.vm.share_folder "v-vagrant-matrix", "/vagrant/matrix", File.dirname(__FILE__)

		# What to run to configure the VM
		config.vm.provision :shell, :inline => "/vagrant/matrix/scripts/install_matrix_deps"
	end
end
