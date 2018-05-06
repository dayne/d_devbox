name 'd_devbox'
maintainer 'Dayne Broderson'
maintainer_email 'broderson@gmail.com'
license 'MIT'
description 'Installs/Configures a development box for Chef/Kitchen/Cloud'
long_description 'Installs/Configures Chefdk, VirtualBox, Packer, Vagrant,
    Atom editor, Habitat, and other key tools needed to get started hacking.'
version '0.1.19'

supports 'ubuntu'
issues_url 'https://github.com/dayne/d_devbox/issues' if respond_to?(:issues_url)
source_url 'https://github.com/dayne/d_devbox' if respond_to?(:source_url)

# chefdk related
depends 'atom', '>= 0.2.0'
depends 'vagrant', '>= 0.7.0'
depends 'habitat', '>= 0.3.0'
depends 'terraform', '>= 1.0.1'
depends 'sbp_packer', '>= 1.4.7'
depends 'docker', '>= 2.15.25'

# note: following have special branches to work - See Berksfile
depends 'virtualbox', '>= 2.0'  # special branch
