docker run --name=mysql -p 3306:3306 -d -e MYSQL_ROOT_PASSWORD=admin -e MYSQL_ROOT_HOST=% mysql:latest

docker exec -it mysql mysql -u root -p

password: admin

------------------------------

CREATE USER 'bdp'@'%' IDENTIFIED BY 'bdp';

GRANT ALL PRIVILEGES ON * . * TO 'bdp'@'%';

FLUSH PRIVILEGES;

------------------------------

show databases;

create database bdp;

use bdp;

show tables;
