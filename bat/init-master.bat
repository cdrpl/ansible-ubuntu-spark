docker build -t ansible .

docker run -it --name init-master ansible ansible-playbook init-master.yml

docker container rm init-master
