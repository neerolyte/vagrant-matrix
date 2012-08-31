

= Building the base

Install Vagrant and VeeWee.

Use base_builder it'll translate some template files and kick off the basebox commands in the right order, it's got inbuilt help:

    ./base_builder --help

Now you can start the box:

    vagrant up

= TODO

Stuff I want to fix...

VirtualBox Tools are not cached across builds (it's downloading a 48M file on each build :/).

cleanup.sh is mostly pointless and it currently requires needlessly populating yum cache.

proxy and mirror settings should be configured in to yum on the installed OS, not just used for base installation.

Whatever package installs the rpm gpg signing keys needs to be included in ks.cfg, because at the moment you have to manually press yes to all the prompts on the first usage of yum in the built OS.