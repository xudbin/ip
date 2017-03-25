# ip
#!/bin/bash
# Progam:
# IP
# Hisrory:
# 2017/03/10 Hsu
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin 
export PATH
netstat -an | grep 256| grep ESTABLISHED | awk -F ':' '{print $2"\t"}'|awk '{print $2}'| awk '!a[$0]++'|sort|uniq|while read line;
do curl http://www.ip.cn/index.php?ip=$line;
done
