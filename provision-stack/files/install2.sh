#!/bin/bash

apt-get install software-properties-common curl gnupg2 apt-transport-https
wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | apt-key add -
echo "deb https://packages.erlang-solutions.com/ubuntu focal contrib" | tee /etc/apt/sources.list.d/erlang.list
apt-get update -y
apt-get install erlang -y
erl -v

curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.deb.sh | bash
apt-get update -y
apt-get install rabbitmq-server -y
systemctl start  rabbitmq-server
systemctl enable rabbitmq-server