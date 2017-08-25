## 0.1.13 - 2017-08-25
* added docker to mix

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
