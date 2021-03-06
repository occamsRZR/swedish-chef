#
# Cookbook Name:: major-tom
# Recipe:: default
#
# Copyright 2014, Brandon Fulk
#
# All rights reserved - Do Not Redistribute
#

remote_file "#{Chef::Config[:file_cache_path]}/background.png" do
  source 'http://i.imgur.com/BmrwSqs.jpg'
  notifies :run, 'execute[set Desktop background]', :immediately
end

execute 'set Desktop background' do
  command "gsettings set org.cinnamon.desktop.background picture-uri 'file://#{Chef::Config[:file_cache_path]}/background.png'"
  user 'edward'
  action :run
end
