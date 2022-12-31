docker build -t ansible .

docker run -it --name init-nodes ansible ansible-playbook init-nodes.yml

docker container rm init-nodes
