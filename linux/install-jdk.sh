#!/bin/bash

###############################################
# Filename:    install-jdk.sh
# Version:     1.0
# Date:        2019-02-18
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 安装jdk-1.8 
# Notes:       
###############################################

export LANG="en_US.UTF-8"

#工作空间
workspaces=$(dirname "$0")

. ${workspaces}/common-constants

tar zxvf ${software_path}/jdk-8u202-linux-x64.tar.gz -C ${install_path}/

update-alternatives --install "/usr/bin/java" "java" "/usr/local/jdk1.8.0_202/bin/java" 1
update-alternatives --config java

