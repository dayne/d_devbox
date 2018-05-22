default['vagrant']['version'] = '2.1.0'
default['terraform']['version'] = '0.11.7'
default['chefdk']['version'] = '3.0.36'

default['packer']['version'] = '1.2.3'
default['packer']['checksum'] = '822fe76c2dfe699f187ef8c44537d10453a1545db620e40b345cf6991a690f7d'

default['chefdk']['url'] = 'https://packages.chef.io/files/stable/chefdk/3.0.36/debian/8/chefdk_3.0.36-1_amd64.deb'
default['chefdk']['checksum'] = '1949211056e26acaa221bf974c45e8994baf3ff6a79de3fbd39f10129736808b'

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
