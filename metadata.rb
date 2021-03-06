name 'd_devbox'
maintainer 'Dayne Broderson'
maintainer_email 'broderson@gmail.com'
license 'MIT'
description 'Installs/Configures a development box for Chef/Kitchen/Cloud'
long_description 'Installs/Configures Chefdk, VirtualBox, Packer, Vagrant,
    Atom editor, Habitat, and other key tools needed to get started hacking.'
version '0.4.0'

supports 'ubuntu'
issues_url 'https://github.com/dayne/d_devbox/issues' if respond_to?(:issues_url)
source_url 'https://github.com/dayne/d_devbox' if respond_to?(:source_url)

# chefdk related
depends 'atom', '>= 0.2.0'
depends 'vagrant'
depends 'habitat'
#depends 'terraform', '>= 2'
depends 'docker'
depends 'docker_compose'

# note: following have special branches to work - See Berksfile
depends 'virtualbox', '>= 2.1'  # special branch

