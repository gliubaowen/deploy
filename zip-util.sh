#!/bin/bash

# -------------------------------------------------------------------------------
# Filename:    zip-util.sh
# Version:     2.0
# Date:        2018-11-20
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: zip 压缩文件 
# Notes:       
# -------------------------------------------------------------------------------

DATE=$(date +%Y-%m-%d-%H:%M:%S)
echo "[info] 压缩的当前日期为:$DATE"

BACKUP_DIR=/opt/app/server/temp/report/posorderoffline-$(date +%Y-%m-%d)
echo "[info] 压缩的当前目录为:$BACKUP_DIR"

hostname=`hostname`

zip -r ${BACKUP_DIR}/snapshot-MemberTicketData-${hostname}.gfd.zip  $BACKUP_DIR/snapshot-MemberTicketData-${hostname}.gfd
