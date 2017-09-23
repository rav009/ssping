#!/bin/sh

opt=${1:1}
#no space when define variable!
cpath="/etc/shadowsocks/*_config.json" 

#show the list
if  [ "$opt" = "s" ]
then 
	echo $(uci get shadowsocks.@shadowsocks[0].config_file)
	N=1
	for file in `ls $cpath`
	do
		if test -f $file
		then
			a=`grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' $file`
			echo $N. $file: $a  
			N=$(($N+1))
		fi
	done
	return
fi


#ping an index
if  [ "$opt" -gt 0 ] 2>/dev/null ;
then 
	N=1
	for file in `ls $cpath`
	do
		if [ -f "$file" ];then
				if [ "$opt" -eq "$N" ];then
					a=`grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' $file`
					echo $N. $file: $a
					ping $a -c 4  
				fi
				N=$(($N+1))
		fi
	done
	return
fi

#use a config file
while getopts "u:" opt; do  
  case $opt in  
    u)  
	#echo $OPTARG
	N=1
	for file in `ls $cpath`
	do
		if [ -f "$file" ];then
				if [ "$OPTARG" -eq "$N" ];then
					a=`grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' $file`
					uci set shadowsocks.@shadowsocks[0].config_file=${file##*/}
					/etc/init.d/shadowsocks restart
				fi
				N=$(($N+1))
		fi
	done   
      ;;  
  esac  
done  
