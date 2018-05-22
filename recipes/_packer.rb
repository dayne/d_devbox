#
# install packer manually
#

ver = node['packer']['version']
url = "https://releases.hashicorp.com/packer/#{ver}/packer_#{ver}_linux_amd64.zip"
file = File.basename(url)
filep = "/usr/local/src/#{file}"
# curl filep | sha256sum
file_checksum = node['packer']['checksum']
# '822fe76c2dfe699f187ef8c44537d10453a1545db620e40b345cf6991a690f7d'

remote_file filep do
  source url
  action :create
  checksum file_checksum
  notifies :run, 'execute[unzip_and_apply_packer]'
end

execute 'unzip_and_apply_packer' do
  command "unzip -d /usr/local/bin #{filep}"
  only_if { File.exists?(filep) }
  action :nothing
end
