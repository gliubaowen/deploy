#!/bin/bash

# -------------------------------------------------------------------------------
# Filename:    install-tomcat.sh
# Version:     1.0
# Date:        2019-02-18
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 安装tomcat
# Notes:       
# -------------------------------------------------------------------------------

export LANG="en_US.UTF-8"

#工作空间
workspaces=$(dirname "$0")

. ${workspaces}/common-constants

tar zxvf ${software_path}/apache-tomcat-8.0.36.tar.gz -C ${install_path}/

