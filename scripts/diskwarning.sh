
#!/bin/bash
#monitor available disk space
#提取本服务器的IP地址信息  
 
SPACE=` df -hP | awk '{print int($5)}'`

usage1=` echo $SPACE | awk '{print int($2)}' `
echo $usage1
if [ $usage1 -ge 30 ]
then
  echo " 服务器 磁盘空间 使用率已经超过90%，请及时处理。" > ~/warning.log
fi


