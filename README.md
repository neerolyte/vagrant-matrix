# Overview

Vagrant and VeeWee configuration for building Squiz Matrix VMs.

Get Vagrant from: http://vagrantup.com/

Get VeeWee from: https://github.com/jedi4ever/veewee

# Building the base

Eventually this will be optional, I'll host the box somewhere.



Use base_builder it'll translate some template files and kick off the basebox commands in the right order, it's got inbuilt help:

    ./base_builder --help
    
Now you can start the box:

    vagrant up

# TODO

Stuff I want to fix...

cleanup.sh is mostly pointless and it currently requires needlessly populating yum cache.

proxy and mirror settings should optionally be configured in to yum on the installed OS, not just used for base installation.

Whatever package installs the rpm gpg signing keys needs to be included in ks.cfg, because at the moment you have to manually press yes to all the prompts on the first usage of yum in the built OS.

Convert base_builder to a makefile + config file.