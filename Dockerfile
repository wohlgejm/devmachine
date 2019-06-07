FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install --yes software-properties-common
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt-get install --yes ansible sudo

RUN useradd -ms /bin/bash jerry
RUN echo "jerry ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER jerry
WORKDIR /home/jerry/devmachine

ADD . /home/jerry/devmachine
#
# # Run the playbook
# RUN ansible-playbook setup.yml
#
# # Run the playbook again to ensure idimpotent
# #RUN ansible-playbook setup.yml
#
# # Server spec
# ADD Gemfile Gemfile.lock
# RUN bundle install
