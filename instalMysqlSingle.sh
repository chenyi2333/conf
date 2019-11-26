#!/bin/bash
docker pull mysql:5.7
mkdir -p conf
mkdir -p logs
mkdir -p data
docker run -p 3306:3306 --name mysql_3306 -v $PWD/conf:/etc/mysql/conf.d -v $PWD/logs:/logs -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=ycpcmysql122. -d mysql:5.7
