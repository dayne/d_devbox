default['vagrant']['version'] = '2.0.4'
default['terraform']['version'] = '0.11.7'
default['chefdk']['version'] = '2.5.3'

default['chefdk']['url'] = 'https://packages.chef.io/files/stable/chefdk/2.4.17/debian/8/chefdk_2.4.17-1_amd64.deb'
default['chefdk']['checksum'] = 'f5b8cf5b8fb03f8bc4d915fddf82bfc6be66e45d3a7e9a9a11e6cd6cac5a4031'
# 'https://packages.chef.io/files/stable/chefdk/2.3.4/ubuntu/16.04/chefdk_2.3.4-1_amd64.deb'
# ff7124bfd4ad4b7351177df89b3986661f95e14df2dfb5b9ea6b0af247c2c07d'

node.default['gitkraken']['version'] = '3.3.4'
node.default['gitkraken']['url'] = \
           'http://n1nj4net-public.s3-website-us-west-2.amazonaws.com/gitkraken-amd64-3.3.4.deb'
           # aws s3 cp gitkraken-amd64-2.3.3.deb s3://n1nj4net-public/ --acl public-read
           # 'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
# curl https://release.gitkraken.com/linux/gitkraken-amd64.deb  | sha256sum
node.default['gitkraken']['checksum'] = \
   '9af22525f9e750fec31c4588c06cfd31c47e9bddad15e35864a80817ea5d59b6' # v3.3.4
   '3aef1cc96bf0786ecdb93acfb1fffb7cfe0e615ae5eff146986e472b36bb4561' # v3.1.0
   '839ce63d40abfe710aacca440cce013d698320fb3635437568d421a6bb62c8c6' # v2.5
