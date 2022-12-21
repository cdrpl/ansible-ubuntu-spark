docker build -t ansible-ubuntu-spark .

docker run -it --name build-spark ansible-ubuntu-spark ansible-playbook /root/build-spark.yml

docker container rm build-spark
