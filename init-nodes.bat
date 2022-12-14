docker build -t ansible-ubuntu-spark .

docker run -it --name init-nodes ansible-ubuntu-spark ansible-playbook /root/init-nodes.yml

docker container rm init-nodes
