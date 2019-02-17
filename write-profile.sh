#!/bin/bash

# -------------------------------------------------------------------------------
# Filename:    write-profile.sh
# Version:     1.0
# Date:        2019-02-14
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 写入环境变量到profile
# Notes:       
# -------------------------------------------------------------------------------

export LANG="en_US.UTF-8"

#工作空间
workspaces=$(dirname "$0")

. ${workspaces}/common-constants

#jdk
#maven
#tomcat

tar zxvf /root/software/apache-maven-3.6.0-bin.tar.gz -C /usr/local/

/usr/local/apache-maven-3.6.0