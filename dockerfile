FROM ubuntu:22.04

WORKDIR /root

# Update apt dependencies and install required dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y openssh-client python3 python3-pip

# Install Ansible
ENV PATH="${PATH}:/home/ubuntu/.local/bin"
RUN python3 -m pip install --upgrade --user ansible

# Copy required files from project directory
COPY ./playbooks/* .
COPY ./ssh_keys/id_rsa .ssh/id_rsa
COPY ./ansible.cfg /etc/ansible/ansible.cfg
COPY ./hosts /etc/ansible/hosts

# Set the proper permissions for id_rsa
RUN chmod 700 .ssh
RUN chmod 600 .ssh/id_rsa
