FROM ubuntu:22.04

WORKDIR /root

# Update apt dependencies and install required dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y software-properties-common openssh-client \
    && add-apt-repository --yes --update ppa:ansible/ansible \
    && apt-get install -y ansible

COPY ./csv/* /root
COPY ./dependencies/* /root
COPY ./sql/* /root
COPY ./playbooks/* /root
COPY ./ansible.cfg /etc/ansible/ansible.cfg
COPY ./hosts /etc/ansible/hosts
COPY ./ssh_keys/id_rsa /root/.ssh/id_rsa

RUN chmod 700 /root/.ssh
RUN chmod 600 /root/.ssh/id_rsa
