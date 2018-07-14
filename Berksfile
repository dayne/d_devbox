source 'https://supermarket.chef.io'
#source :chef_server

metadata

# having to hack in my own branches until the main repo updates
cookbook 'virtualbox', git: 'https://github.com/dayne/virtualbox-cookbook'
#cookbook 'terraform', git: 'https://github.com/dayne/chef-terraform', branch: 'chef13'
cookbook 'atom', git: 'git@github.com:dayne/chef-atom.git', branch: 'relaxhomebrew'
#cookbook 'chef-dk', git: 'https://github.com/dayne/chef-dk-chef', branch: 'jdh-updatings'

# needed for a while the new ark cookbook is sheparded into sous-chef group
# check https://github.com/haidangwa/chef-terraform/blob/master/README.md
# in future to see if it is still needed
cookbook 'gpg', git: 'https://github.com/sous-chefs/gpg',
         ref: '2f682a1406047e99351d184fe18fff035a0c856c'
