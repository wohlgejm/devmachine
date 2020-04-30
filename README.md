# :computer: Provisioning development machines

This repository contains an [Ansible](https://www.ansible.com/) playbook
for configuring an Ubuntu PC.
It uses [Serverspec](https://serverspec.org/)
and [CircleCI](https://circleci.com/) to assert the playbook can
correctly configure the machine. [insync](https://www.insynchq.com/) is used
to synchronize home directories across machines.

## Current working version
Ubuntu 20.04 Focal Fossa

## Getting started
To get started, [download](https://www.insynchq.com/downloads) and install insync.
This will require you to log into Google to access Drive. Copy the contents
of [this](https://github.com/wohlgejm/devmachine/blob/master/insync_ignore) file
into the insync ignore configuration.

Once insync has synchronized the home directory, install Ansible.
```
sudo apt-get install ansible
```

Inside the `devmachine` directory run the playbook.
```
ansible-playbook setup.yml --ask-become-pass
```

To setup Github ssh access, export an access token and run the `gitubub.sh` script.
```
export TOKEN=mygithubaccesstoken
./github.sh
```
This will create an ssh key and make an API call to add it to Github.
