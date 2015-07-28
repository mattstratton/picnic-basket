[![Stories in Ready](https://badge.waffle.io/mattstratton/picnic-basket.png?label=ready&title=Ready)](https://waffle.io/mattstratton/picnic-basket)
# picnic-basket

This cookbook is used to prepare a student's workstation for use in a Chef POC/workshop. It should install the necessary tools required, including:

* Vagrant
* VirtualBox (not currently working)
* Conemu (Windows only)
* git client

It will also ensure that the appropriate version of ChefDK is installed, and configure `chef shell-init` appropriately for the user's shell.

## Preflight steps
The cookbook should run all the usual preflight tests, from https://github.com/ChefRycar/chef-preflight. This cookbook will also output the results to a text file (TODO).

## Usage
In theory, it should work like this:

1. Install chef-client (or chefdk)
1. Download zip version of this cookbook
1. Extract cookbook to somewhere easy to access via terminal/console
1. Run `chef-client -z` pointing to this cookbook
