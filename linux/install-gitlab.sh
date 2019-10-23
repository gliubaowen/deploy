#!/bin/bash

###############################################
# Filename:    install-git.sh
# Version:     1.0
# Date:        2019-02-14
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 安装jdk-1.8 
# Notes:       
###############################################

export LANG="en_US.UTF-8"

#工作空间
workspaces=$(dirname "$0")

. ${workspaces}/common-constants

#yum localinstall ${software_path}/git/*.rpm

sudo apt-get install -y curl openssh-server ca-certificates

sudo apt-get install -y postfix

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash

sudo EXTERNAL_URL="https://gitlab.example.com" apt-get install gitlab-ee

