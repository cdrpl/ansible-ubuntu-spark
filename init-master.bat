docker build -t ansible-ubuntu-spark .

docker run -it --name init-master ansible-ubuntu-spark ansible-playbook /root/init-master.yml

docker container rm init-master
