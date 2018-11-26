ri_ver = '0.7.0'
ri_gz = "/usr/local/src/ruby-install-#{ri_ver}.tar.gz" 
remote_file(ri_gz)do
  source "https://codeload.github.com/postmodern/ruby-install/tar.gz/v#{ri_ver}"
  owner 'root'
  checksum '500a8ac84b8f65455958a02bcefd1ed4bfcaeaa2bb97b8f31e61ded5cd0fd70b'
  notifies  :run, 'execute[extract-ruby-install]', :immediately
	#verify "file -f #{ri_gz}"
end

execute 'extract-ruby-install' do
  cwd "/usr/local/src/"
  command "tar xvfz ruby-install-#{ri_ver}.tar.gz"
  creates "/usr/local/src/ruby-install-#{ri_ver}"
  action :nothing
  notifies :run, 'execute[install-ruby-install]', :immediately
end

execute 'install-ruby-install' do
  cwd "/usr/local/src/ruby-install-#{ri_ver}"
  command "make install"
  creates "/usr/local/bin/ruby-install"
  action :nothing
end

