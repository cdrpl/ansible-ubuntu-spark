docker build -t ansible .

docker run -it --name deploy-spark ansible ansible-playbook deploy-spark.yml

docker container rm deploy-spark
