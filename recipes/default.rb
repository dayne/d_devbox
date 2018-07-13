#
# Cookbook:: d_devbox
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
node['apt']['compiletime'] = true if node[:instance_role] == 'vagrant'
include_recipe 'apt'

include_recipe 'atom'
atom_apm 'file-watcher'
atom_apm 'file-icons'

include_recipe 'virtualbox'
include_recipe 'terraform'

include_recipe 'd_devbox::_packer'

include_recipe 'vagrant'
#vagrant_plugin 'winrm'
#vagrant_plugin 'vagrant-winrm'
#vagrant_plugin 'winrm-fs'
#vagrant_plugin 'vagrant-winrm-syncedfolders'

hab_install 'install habitat'


# got annoyed by the old chef_dk cookbook
# using manual install for now
version = node.default['chefdk']['version']
remote_file ("/tmp/chefdk-#{version}_amd64.deb") do
  source node.default['chefdk']['url']
  owner 'root'
  checksum node.default['chefdk']['checksum']
end

dpkg_package 'chefdk' do
  only_if { File.exist?("/tmp/chefdk-#{version}_amd64.deb")}
  source "/tmp/chefdk-#{version}_amd64.deb"
  action [ :install, :upgrade ]
end


# install latest docker:

docker_installation 'default' do
  action :create
end
