docker build -t ansible-ubuntu-spark .

docker run -it --name init-database ansible-ubuntu-spark ansible-playbook /root/init-database.yml

docker container rm init-database
