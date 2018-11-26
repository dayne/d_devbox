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

include_recipe 'd_devbox::_packer'

include_recipe 'vagrant'
#vagrant_plugin 'winrm'
#vagrant_plugin 'vagrant-winrm'
#vagrant_plugin 'winrm-fs'
#vagrant_plugin 'vagrant-winrm-syncedfolders'

hab_install 'install habitat'

## include_recipe 'terraform'
# got annoyed by terraform cookbook too
tfv = node.default['terraform']['version']
remote_file ("/tmp/terraform_#{tfv}_linux_amd64.zip") do
  source "https://releases.hashicorp.com/terraform/#{tfv}/terraform_#{tfv}_linux_amd64.zip"
  owner 'root'
  checksum node.default['terraform']['checksum']
end

# got annoyed by the old chef_dk cookbook
# using manual install for now
chefdk_version = node.default['chefdk']['version']
chefdk_deb = "/tmp/chefdk-#{chefdk_version}_amd64.deb"
remote_file (chefdk_deb) do
  source node.default['chefdk']['url']
  owner 'root'
  checksum node.default['chefdk']['checksum']
  verify "test -f #{chefdk_deb}" 
end

dpkg_package 'chefdk' do
  only_if { File.exist?(chefdk_deb) }
  source chefdk_deb
  action [ :install, :upgrade ]
end

# install latest docker:

docker_installation 'default' do
  action :create
end

include_recipe "d_devbox::_ruby"
