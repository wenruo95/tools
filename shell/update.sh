#!/bin/sh

for file in ~/Git/*
do
	if test -f $file
	then
		echo "$file 是文件"
	fi
	if test -d $file
	then
		#echo $file 是目录
		cd ~/Git/ && cd $file && git pull && git status
	fi
done
