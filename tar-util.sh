#!/bin/bash

# -------------------------------------------------------------------------------
# Filename:    tar-util.sh
# Version:     2.0
# Date:        2018-11-20
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: tar gz 压缩文件 
# Notes:       
# -------------------------------------------------------------------------------

goal=$1
sources=$2

DATE=$(date +%Y-%m-%d-%H:%M:%S)
echo "[info] 压缩的当前日期为:$DATE"

hostname=`hostname`

tar zcvf ${goal} ${sources}
