# Provisioning of my local development machines

This repositiory contains an [Ansible](https://www.ansible.com/) playbook
for configuring an Ubuntu PC.
It uses [Serverspec](https://serverspec.org/)
and [CircleCI](https://circleci.com/) to assert the playbook can
correctly configure the machine.

## Getting started
First, git must be installed and an ssh key must be added to github
to clone this repository.
A github token is necessary which can be viewed [here](https://github.com/settings/tokens).

Run:
```
export EMAIL=wohlgejm@gmail.com
export TOKEN=githubtoken
sudo apt install git
sudo apt install curl
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

ssh-keygen -t rsa -b 4096 -C "$EMAIL" -N '' -f ~/.ssh/id_rsa

KEY=$( cat ~/.ssh/id_rsa.pub )
HOSTNAME=$( cat /proc/sys/kernel/hostname)
USER=$( whoami )
TITLE=$USER@$HOSTNAME
JSON=$( printf '{"title": "%s", "key": "%s"}' "$TITLE" "$KEY" )

curl -s -d "$JSON" "https://api.github.com/user/keys?access_token=$TOKEN"

git clone git@github.com:wohlgejm/devmachine.git
```

Once the repo has been cloned, run the ansible playbook:
```
ansible-playbook setup.yml --ask-become-pass
```
