##
# Cookbook Name:: Archer
# Recipe:: packages
#
# Copyright 2014, Brandon Fulk
#
# Configures and installs the following packages using pacman
#   - git
#   - emacs
#   - ruby
#   - rvm
#   - wget
#   - chromium
#   - VirtualBox

include_recipe 'pacman'

%w(git emacs wget) do |package_name|
  pacman_aur package_name
end
