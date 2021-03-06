# # encoding: utf-8

# Inspec test for recipe d_devbox::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

%w(vagrant atom).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe command('hab --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'hab ' }
  its('stderr') { should eq '' }
end

describe package('VirtualBox-5.2') do
  it { should be_installed }
end

describe command('virtualbox --help') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'Oracle VM VirtualBox Manager' }
  its('stderr') { should match '' }
end

describe command('/opt/chefdk/bin/chef --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'Chef Development Kit Version' }
  its('stderr') { should match '' }
end

describe command('vagrant --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match '2.2.2' }
  its('stderr') { should match '' }
end

describe command('packer --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match '1.3.2' }
end

describe command('docker --version') do
  its('exit_status') { should eq 0 } 
  its('stdout') { should match 'Docker' }
end

#
# docker-compose installed correctly
#
describe directory('/etc/docker-compose') do
  it { should exist }
end

describe command('/usr/local/bin/docker-compose version') do
  its('stdout') { should match 'docker-compose version' }
  its('stdout') { should cmp >= '1.22' }
end
