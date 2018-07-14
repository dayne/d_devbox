# d_devbox

Turns an Ubuntu system into a hacking and development station with the following tools installed:

* [chefdk](https://downloads.chef.io/chefdk) - via [chef-dk cookbook](https://supermarket.chef.io/cookbooks/chef-dk)
* [Atom Editor](https://atom.io) - via [atom cookbook](https://supermarket.chef.io/cookbooks/atom)
  * includes some key plugins: `file-watcher` and `file-icons`
* [VirtualBox-5.2](https://www.virtualbox.org/) - via [my fork of the virtualbox cookbook own branch_](https://github.com/dayne/virtualbox-cookbook/)
* [vagrant](https://www.vagrantup.com/) - via [vagrant cookbook](https://supermarket.chef.io/cookbooks/vagrant)
  * includes the `winrm plugin`
* [habitat](https://www.habitat.sh/)
* [terraform](https://www.terraform.io/) - [terraform cookbook](https://github.com/haidangwa/chef-terraform)
* [packer](https://www.packer.io/) - via [sbp_packer cookbook](https://github.com/schubergphilis/sbp_packer)
* [docker](http://docker.io/) -  via [docker_cookbook](http://docker.io/)

#### Test Kitchen

[Inspec](http://inspec.io) smoke tests try to [verify](https://github.com/dayne/d-base/tree/master/test/smoke) the bulk of actions done. If you've got a sane chef development workstation (see `chefdk` recipe in this repo) - then you can sanity check things converge and verify by doing:

```
    kitchen converge
    kitchen verify
```


# Contributing

* Fork the repository on Github
* Create a named feature branch (like add_component_x)
* Write your change
* Write tests for your change (if applicable)
* Run the tests, ensuring they all pass
* Submit a Pull Request using Github
