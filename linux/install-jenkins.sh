#!/bin/bash

###############################################
# Filename:    install-jenkins.sh
# Version:     1.0
# Date:        2019-02-14
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 安装jenkins
# Notes:       
###############################################

export LANG="en_US.UTF-8"

#工作空间
workspaces=$(dirname "$0")

. ${workspaces}/common-constants

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

#直接将控制台日志输出到文件`/var/log/jenkins/jenkins.log`。
#如果你的`/etc/init.d/jenkins`文件无法启动Jenkins，编辑`/etc/default/jenkins`， 修改 ----HTTP_PORT=8080----`为----HTTP_PORT=8081----` 在这里，“8081”也可被换为其他可用端口

#service jenkins restart
