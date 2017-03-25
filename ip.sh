# ip
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin 
export PATH
netstat -an | grep 256| grep ESTABLISHED | awk -F ':' '{print $2"\t"}'|awk '{print $2}'| awk '!a[$0]++' | wc -l
