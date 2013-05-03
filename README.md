# Overview

Squiz Matrix VM automation.

Primarily designed for use under Vagrant but some effort is put in to making provisioners portable across Squiz supported environments.

Get Vagrant from: http://vagrantup.com/

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
