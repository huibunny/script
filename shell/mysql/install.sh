#!/bin/bash
######## On Redhat ###################
#sudo yum install -y ncurses-devel
######## On Ubuntu ###################
#sudo apt-get install -y libncurses5-dev
######################################
set +e
#eval 'wget --no-check-certificate https://downloads.mysql.com/archives/get/file/mysql-5.6.22.tar.gz'
tar xzf mysql-5.6.22.tar.gz
cd mysql-5.6.22
# Preconfiguration setup
sudo groupadd mysql
sudo useradd -r -g mysql mysql
set -e
# Beginning of source-build specific instructions
cmake . 
make -j4
sudo make install
# End of source-build specific instructions
# Clean package
cd ..
rm -rf mysql-5.6.22*
# Postinstallation setup
cd /usr/local/mysql
sudo chown -R mysql .
sudo chgrp -R mysql .
sudo scripts/mysql_install_db --user=mysql
sudo chown -R root .
sudo chown -R mysql data
sudo mkdir /var/run/mysqld
sudo chown -R mysql.mysql /var/run/mysqld
sudo bin/mysqld_safe --user=mysql &
# Next command is optional
sudo cp support-files/mysql.server /etc/init.d/mysql

#####
# vi /root/.bash_profile
#在PATH=$PATH:$HOME/bin添加参数为：
# PATH=$PATH:$HOME/bin:/usr/local/mysql/bin:/usr/local/mysql/lib
#[root@ rhel5~]./bin/mysqladmin -u root password 'new-password'
#[root@ rhel5~]# mysql -u root mysql
#mysql>use mysql;
#mysql>desc user;
#mysql> GRANT ALL PRIVILEGES ON *.* TO root@"%" IDENTIFIED BY "root";　　//为root添加远程连接的能力。
#mysql>update user set Password = password('xxxxxx') where User='root';
#mysql>select Host,User,Password  from user where User='root'; 
#mysql>flush privileges;
#mysql>exit
################################################################
