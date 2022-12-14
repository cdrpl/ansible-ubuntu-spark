docker build -t ansible-ubuntu-spark .

docker run -it --name apt-update ansible-ubuntu-spark ansible-playbook /root/apt-update.yml

docker container rm apt-update
