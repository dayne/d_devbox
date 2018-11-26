#
# install packer manually
#

package 'unzip'

ver = node['packer']['version']
url = "https://releases.hashicorp.com/packer/#{ver}/packer_#{ver}_linux_amd64.zip"
file = File.basename(url)
filep = "/usr/local/src/#{file}"
# curl filep | sha256sum
file_checksum = node['packer']['checksum']

remote_file filep do
  source url
  action :create
  checksum file_checksum
  notifies :run, 'execute[unzip_and_apply_packer]'
  #verify "test -f #{filep}"
end

execute 'unzip_and_apply_packer' do
  command "unzip -d /usr/local/bin #{filep}"
  creates "/usr/local/bin/packer"
  only_if { File.exists?(filep) }
  action :nothing
end
