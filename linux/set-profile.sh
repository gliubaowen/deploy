#!/bin/bash

# -------------------------------------------------------------------------------
# Filename:    set-profile.sh
# Version:     1.0
# Date:        2019-10-17
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 写入环境变量到profile
# Notes:       
# -------------------------------------------------------------------------------

export LANG="en_US.UTF-8"

#工作空间
workspaces=$(dirname "$0")

. ${workspaces}/common-constants

echo >> $profile

#jdk
echo 'JAVA_HOME=/usr/local/jdk1.8.0_202' >> $profile

#maven
echo 'M2_HOME=/usr/local/apache-maven-3.6.0' >> $profile

#tomcat
echo 'TOMCAT_HOME=/usr/local/apache-tomcat-8.0.36' >> $profile
echo 'CATALINA_HOME=/usr/local/apache-tomcat-8.0.36' >> $profile

#path
echo 'PATH=$PATH:$JAVA_HOME/bin:$M2_HOME/bin:$TOMCAT_HOME/bin' >> $profile

echo >> $profile

source $profile
