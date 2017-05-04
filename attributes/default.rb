default['vagrant']['version'] = '1.9.3'
default['terraform']['version'] = '0.9.3'

#default['chef_dk']['version'] = '1.3.40'
#default['chef_dk']['version'] = '1.2.22'

default['chefdk']['version'] = '1.3.43'
default['chefdk']['url'] = 'https://packages.chef.io/files/stable/chefdk/1.3.43/debian/8/chefdk_1.3.43-1_amd64.deb'
default['chefdk']['checksum'] = '3ce2fce46e212c9c5e65018c07142dc5cb9af2fbb0de27cc68504b9a779a7567'
#default['chefdk']['version'] = '1.3.40'
#default['chefdk']['url'] = 'https://packages.chef.io/files/stable/chefdk/1.3.40/debian/8/chefdk_1.3.40-1_amd64.deb'
#default['chefdk']['checksum'] = 'ea7d748058d98c001d1c127751d14f9e1d533986216bf323d82ba1fd5168f2fd'

node.default['gitkraken']['url'] = \
           'http://n1nj4net-public.s3-website-us-west-2.amazonaws.com/gitkraken-amd64-2.5.deb'
           #'http://n1nj4net-public.s3-website-us-west-2.amazonaws.com/gitkraken-amd64-2.3.3.deb'
           # aws s3 cp gitkraken-amd64-2.3.3.deb s3://n1nj4net-public/ --acl public-read
           # 'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
node.default['gitkraken']['version'] = '2.5'
# curl https://release.gitkraken.com/linux/gitkraken-amd64.deb  | sha256sum
node.default['gitkraken']['checksum'] = \
   '839ce63d40abfe710aacca440cce013d698320fb3635437568d421a6bb62c8c6' # v2.5
   # 'ad62581c2b066cb65fd62d9eec4cc11d663c004793e07dfc433a10efa9e525e9'  # v2.4
   # 'a6e235ab1a4c1da755af8218ad819fcac6bc89b1a324aa2c0e430f3805cb1a16'  # v2.3.3
