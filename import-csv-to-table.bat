docker build -t ansible-ubuntu-spark .

docker run -it --name import-csv-to-table ansible-ubuntu-spark ansible-playbook /root/import-csv-to-table.yml

docker container rm import-csv-to-table
