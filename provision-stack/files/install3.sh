#!/bin/bash

sudo apt update -y
sudo apt install curl software-properties-common apt-transport-https lsb-release -y
curl -fsSL https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/erlang.gpg

echo "deb https://packages.erlang-solutions.com/ubuntu $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/erlang.list

sudo apt install erlang -y
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.deb.sh | sudo bash

sudo apt update

sudo apt install rabbitmq-server -y 