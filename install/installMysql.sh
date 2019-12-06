#!/usr/bin/env bash

yum install -y https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
yum install -y mysql-server
service mysqld start
