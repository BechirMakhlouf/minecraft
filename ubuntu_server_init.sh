#!/bin/bash

apt update -y \
      && apt upgrade -y \
      && apt install -y openjdk-21-jdk


cd /

git clone https://www.github.com/bechirmakhlouf/minecraft

cd minecraft

curl https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar > server.jar

cp ./mc_server.service /etc/systemd/system/mc_server.service

systemctl daemon-reload
systemctl start mc_server
systemctl enable mc_server
