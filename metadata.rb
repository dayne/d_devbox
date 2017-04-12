name 'd_devbox'
maintainer 'Dayne Broderson'
maintainer_email 'broderson@gmail.com'
license 'MIT'
description 'Installs/Configures a development box for Chef/Kitchen/Cloud'
long_description 'Installs/Configures Chefdk, VirtualBox, Packer, Vagrant,
    Atom editor, Habitat, and other key tools needed to get started hacking.'
version '0.1.7'

supports 'ubuntu'
issues_url 'https://github.com/dayne/d_devbox/issues' if respond_to?(:issues_url)
source_url 'https://github.com/dayne/d_devbox' if respond_to?(:source_url)

# chefdk related
depends 'chef-dk', '~> 3.1.1'
depends 'atom', '~> 0.2.0'
depends 'vagrant'
depends 'habitat' 
depends 'terraform'
depends 'sbp_packer'

# note: following have special branches to work - See Berksfile
depends 'virtualbox', '~> 2.0'  # special branch
