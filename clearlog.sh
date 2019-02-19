#!/bin/bash


# -------------------------------------------------------------------------------
# Filename:    clearlog.sh 
# Version:     1.1
# Date:        2019-02-18
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 清除日志文件
# Notes:       
# -------------------------------------------------------------------------------

#工作空间
WORKSPACE=/root
#当前系统时间
CURRENTDATE=$(date +%Y-%m-%d)
#当前系统时间戳
TIMESTAMP=$(date +%s)
#配置文件
PROPERTIES=logdir.conf
#过期天数
DAY_TIME=27

#检查配置文件是否正确
check_conf()
{
	echo -e '\n[info]====================校验配置文件开始===================='

	if [ -f $PROPERTIES ] ; then
		echo "[success] 配置文件: $PROPERTIES 存在"
	else
		echo "[error]   配置文件: $PROPERTIES 未找到"
		exit 1
	fi

	if [ -s $PROPERTIES ] ; then
		echo "[success] 配置文件: $PROPERTIES 正常"
	else
		echo "[error]   配置文件: $PROPERTIES 为空"
		exit 2
	fi

	echo -e '[info]====================校验配置文件结束====================\n'
}

check_dir()
{
	if [ -f $PROPERTIES ] ; then
		echo "[success] file: $PROPERTIES exist"
	else
		echo "[error]   file: $PROPERTIES not exist"
		exit 1
	fi
}

#删除日志文件
delete_log()
{
	cd $dir
	echo "[info] 清理目录 `pwd` 开始"
	for file in `ls | grep '\.log'`
	do
		modify_timestamp=`stat -c %Y $file`
		time=$[$TIMESTAMP - $modify_timestamp]
		day=$(($time / 86400))
	#	echo $time 	
		
		if [ $day -gt $DAY_TIME ] ; then
			echo "[info] 日志文件: $file 已超过 $day 天"
			echo "file $file 信息如下:"
			ls -l $file 
			modify_date=`stat $file | grep Modify|awk '{print $2}'`
			echo "[info]最后写入时间:$modify_date"
		#	echo $day
			echo "[info] 删除日志文件: $file start..."
		#	rm -rf $file
			echo "[info] 删除日志文件: $file end..."
		fi
	done
	echo "[info] 清理目录 `pwd` 结束"
}

#主函数
main()
{
	echo -e "[info]>>>>>>>>>>>>>>>>>>>>执行此脚本时间:$CURRENTDATE<<<<<<<<<<<<<<<<<<\n"
	cd $WORKSPACE
	echo '[info]####################清理日志文件开始###################'
	check_conf
	echo "[info]读取日志配置文件:$PROPERTIES"
	for dir in `cat $WORKSPACE/$PROPERTIES`
	do
	#	echo $dir
		if [ ! -d $dir ] ; then
			echo "[error] 目录: $dir 不存在"
			continue
		fi
		delete_log
	done

	echo -e "[info]####################清理日志文件结束###################\n\n"
	exit 0
}

#初始化清理日志环境
init()
{
	mkdir -p /opt/log/deletelog/
	echo '*/2  *  *  *  * /bin/bash /root/DeleteLog.sh >> /opt/logs/deletelog/deletelog-$(date +%Y-%m-%d).log' >> /etc/crontab
}

#执行函数
main | tee /opt/logs/deletelog/$(basename "$0")-$(date +%Y-%m-%d).log
