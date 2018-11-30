=======
## Unreleased

## [0.3.1] - 2018-11-30
- remove chefdk file verify line

## [0.3.0] - 2018-11-21
- transition to Ubuntu 18.06 
- updates: chefdk 3.5.13, vagrant 2.2.1, packer 1.3.2, terraform 0.11.10
- removed dependancy on terraform cookbook because it was annoying me
  the same old bug we fixed a year or two ago
- swap out to my own \_ruby.rb for installing ruby-build and rbenv

## [0.2.1] - 2018-07-14
- swap out my branch of the old terraform-cookbook for the new maintained at [hidangwa/chef-terraform](https://github.com/hidangwa/chef-terraform)
- fix tests and remove gitkraken test expecation

## 0.2.0  - 2018-07-12
- remove gitkraken, update chefdk to 3.1.0, update vagrant to 2.1.2
- update virtualbox-cookbook dep to 2.1 to ensure VirtualBox 5.2 shows up
- force apt update

## 0.1.20 - 2018-05-22
- remove use of sbd_packer cookbook in favor of manual packer install
- update to chefdk 3.0.36

## 0.1.19 - 2018-05-06
* actually update to chefdk 2.5.3 (fixed URLs and sha)
* upgrade to vagrant 2.1.0

## 0.1.18 - 2018-04-25
* update vagrant to 2.0.4 (from 2.0.2)
* update terraform to 0.11.7 (from 0.11.3)
* update chefdk to 2.5.3 (from 2.4.17) (failed to update url)

## 0.1.17 - 2018-02-04
* basic `berks update` to sync up with latest
* using my own chef13 branch for terrform chef cookbook

## 0.1.16 - 2018-02-04
* update gitkraken 3.3.4, vagrant 2.0.2, chefdk 2.4.17
* remove vagrant winrm plugins from being installed

## 0.1.15 - 2017-10-03
* update terraform (0.10.8), chefdk (2.3.4-1), vagrant (2.0.1)
* pull in branchs atom to get out from under old homebrew dep.

## 0.1.14 - 2017-10-03
* minor update to latest version of dependancies (berks update)

## 0.1.13 - 2017-10-03
* added docker to mix
* Update vagrant (2.0.0), terraform (0.10.7), chefdk (1.6.1), and gitkraken (3.1.0)

## 0.1.12 - 2017-05-03
* update gitkraken to 2.5
* update chefdk to 1.3.43

## 0.1.11 - 2017-04-12
* bringing gitkraken recipe over from d-base

## 0.1.10 - 2017-04-12
* setting minimum version dependancy for all dependant cookbooks
  * this fixes the tofu sadness with old terraform sliding in on `UAGINA` chef server
* Also updating to 0.9.2 terraform as new default
* bringing back Berksfile.log so I can track dependancy changes easier

## 0.1.9 - 2017-04-12
* getting ride of chef_dk for now in favor of manual dpkg install this
makes it `just work` for both Ubuntu 16.10 and 16.04 my targets. 

## 0.1.8 - 2017-04-12
* Fix chef_dk `not_if` test to use `node['chef_dk']['version']`
* locking test kitchen to chef client 12.19.36 for now - fix for chef 13 later
* packer --version now returns 0 (correct behavior) - fixed verify to reflect

## 0.1.7 - 2017-04-12
* chefdk 1.3.40
* unlock habitat and terraform dependency
* packer 1.0.0 expected now
