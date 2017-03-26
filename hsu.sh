proc_name="shadowsocks"
number=`ps -ef | grep $proc_name | grep -v grep | wc -l` 
if [ $number -eq 0 ]                             
then 
	/etc/init.d/shadowsocks restart               
fi
