

Install Vagrant and VeeWee.

Build base box:

    vagrant basebox build 'sl-62'

Export base box:

    vagrant basebox export 'sl-62'

Use created box locally:

    vagrant box add 'sl-62' 'sl-62.box'

Now you can start the box:

    vagrant up