# Ansible Ubuntu Spark

This repository provides ansible scripts to initialize ubuntu instances for Apache Spark in cluster mode. A Dockerfile is provided to create an image capable of running Ansible.

### Requirements

- Instances must be running Ubuntu 22.04 LTS.
- Docker must be installed on the host if your OS is Windows

### Setup Instructions (On Host OS)

1. Clone the repository - `git clone https://github.com/cdrpl/ansible-ubuntu-spark.git`
2. Copy your ssh key into the [ssh_keys](./ssh_keys) folder and name it id_rsa
3. Copy the [example.ansible.cfg](./example.ansible.cfg) file - `cp example.ansible.cfg ansible.cfg`
4. Copy the [example.hosts](./example.hosts) file - `cp example.hosts hosts`
5. Edit the hosts file by adding the public IP addresses for the master and worker instances.

### How to Initialize the Master Instance (Windows OS Host)

1. Start Docker
2. Run `./bat/init-master.bat`

### How to Initialize the Worker Instances (Windows OS Host)

1. Start Docker
2. Run `./bat/init-nodes.bat`

### How to deploy Apache Spark to already initialized instances (Windows OS Host)

1. Start Docker
2. Run `./bat/deploy-spark`

### How to Update the Dependencies of your Instances (Windows OS Host)

1. Start Docker
2. Run `./bat/apt-update.bat`

### Ansible Config

If you need to customize the Ansible configuration you can edit the ./ansible.cfg file that was created during setup.
