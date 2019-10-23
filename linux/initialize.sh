#!/bin/bash

###############################################
# Filename:    initialize.sh 
# Version:     2.0.0
# Date:        2019-02-18
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 初始化项目
# Notes:       
###############################################

#工作空间
workspaces=$(dirname "$0")

. ${workspaces}/common-constants

#创建软件目录
mkdir -p $software_path
#创建日志目录
mkdir -p $log_dir

cp /mnt/d/01.Resources/01.Learn/09.Tools/JDK/jdk-8u202-linux-x64.tar.gz $software_path
cp /mnt/d/01.Resources/01.Learn/09.Tools/Maven/apache-maven-3.6.0-bin.tar.gz $software_path
cp /mnt/d/01.Resources/01.Learn/09.Tools/Tomcat/apache-tomcat-8.0.36.tar.gz $software_path

apt-get update -y
apt-get upgrade -y
apt-get install -y dos2unix

#mkdir -p /root/deploy
#ln -s /mnt/d/01.Resources/06.Project/liqun/project/deploy/linux /root/deploy/linux

