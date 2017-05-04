# # encoding: utf-8

# Inspec test for recipe d_devbox::gitkraken

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('gitkraken') do
  it { should be_installed }
end
