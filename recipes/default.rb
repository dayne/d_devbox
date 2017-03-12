#
# Cookbook:: d_devbox
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'atom'
atom_apm 'file-watcher'
atom_apm 'file-icons'

#chefdk 'default' do
#  version node['chef_dk']['version']
#  action :install
#  not_if "/opt/chefdk/bin/chef --version | grep #{version}"
#end

include_recipe 'chefdk'
include_recipe 'virtualbox'
include_recipe 'terraform'
include_recipe 'sbp_packer'

include_recipe 'vagrant'
vagrant_plugin 'vagrant-winrm'

hab_install 'install habitat'
