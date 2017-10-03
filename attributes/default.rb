default['vagrant']['version'] = '2.0.0'
default['terraform']['version'] = '0.10.7'
default['chefdk']['version'] = '1.6.1'
node.default['gitkraken']['version'] = '3.1.0'

default['chefdk']['url'] = 'https://packages.chef.io/files/stable/chefdk/1.6.1/ubuntu/16.04/chefdk_1.6.1-1_amd64.deb'
default['chefdk']['checksum'] = 'ffa2c4e1cd624b86a28a23e9ad13b6b6a7e7e651ef22b3dc55fd56427775ad1c'

node.default['gitkraken']['url'] = \
           'http://n1nj4net-public.s3-website-us-west-2.amazonaws.com/gitkraken-amd64-3.1.0.deb'
           # aws s3 cp gitkraken-amd64-2.3.3.deb s3://n1nj4net-public/ --acl public-read
           # 'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
# curl https://release.gitkraken.com/linux/gitkraken-amd64.deb  | sha256sum
node.default['gitkraken']['checksum'] = \
   '3aef1cc96bf0786ecdb93acfb1fffb7cfe0e615ae5eff146986e472b36bb4561' # v3.1.0
   '839ce63d40abfe710aacca440cce013d698320fb3635437568d421a6bb62c8c6' # v2.5
