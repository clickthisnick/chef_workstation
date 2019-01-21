# workstation

## Install Chef

https://docs.chef.io/install_dk.html

---

## Setup

Chef in local-mode looks in `/cookbooks` so you need to symlink this directory.

`sudo mkdir /cookbook; sudo ln -s ~/dev/chef_workstation /cookbooks/chef_workstation`

---

## Run Chef

To run locally (Edit files on your macbook)

`sudo chef-client --local-mode --override-runlist chef_workstation`

---

## Other

For items that aren't managed by chef they can be found in `non-chef` directory.

---
