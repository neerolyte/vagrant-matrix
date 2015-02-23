# Warning!

vagrant-matrix is no longer maintained.

Squiz no longer provide any publicly accessible repo for Squiz Matrix so there's no trivial way for vagrant-matrix to continue to function in its existing form.

The code is left up in case someone finds it useful. If you want to take it and turn it in to something else and you need some specific FOSS license on it, just ask me, I'll probably grant it.

# Overview

Squiz Matrix VM automation.

Primarily designed for use under Vagrant but some effort is put in to making provisioners portable across Squiz supported environments.

Get Vagrant from: http://vagrantup.com/

Please note, this is only for use on development/test VMs, it will probably eat your data and lose you your job. So don't use it with data you like.

# Canonical usage

I'm trying to make it possible to directly reference this repo in your project.

With Git use a submodule:
   
    git submodule add https://github.com/neerolyte/vagrant-matrix.git vagrant-matrix

With SVN use a SVN external of (svn propedit svn:externals .):

    vagrant-matrix https://github.com/neerolyte/vagrant-matrix/trunk

See Vagrantfile for an example of how to reference Vagrantfile.inc.rb

It may be better to [reference a tag](https://github.com/neerolyte/vagrant-matrix/tags) to keep my changes from immediately breaking your project though.

# Building the base

Base box specs are managed as part of https://github.com/neerolyte/lyte-vagrant-boxes
