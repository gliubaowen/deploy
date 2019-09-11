#!/bin/bash

# -------------------------------------------------------------------------------
# Filename:    install-wsl-ssh.sh
# Version:     1.0
# Date:        2019-09-10
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 配置wsl下ssh服务 
# Notes:       
# -------------------------------------------------------------------------------

export LANG="en_US.UTF-8"

# 工作空间
workspaces=$(dirname "$0")

. ${workspaces}/common-constants

# 关闭ssh服务
sudo service ssh stop
# 卸载ssh-server
sudo apt-get remove openssh-server
# 安装ssh-server
sudo apt-get install openssh-server -y

# sudo vi /etc/ssh/sshd_config

echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config # 允许用户名密码方式登录
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config # 允许root用户远程登录

# 启动ssh服务
sudo service ssh restart
