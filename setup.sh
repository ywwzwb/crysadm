#!/bin/bash
#安装云监工环境脚本
#sanzuwu@gamil.com
#脚本适用ubuntu14、debian8

#更新源

sudo apt-get -q update 

#安装python3.4

sudo apt-get -qy install python3.4 python3.4-dev 

#安装pip，确保本脚本和get-pip.py 文件在一个文件夹
BASE_DIR="$( cd "$( dirname "$0"  )" && pwd  )"
sudo chmod +x ${BASE_DIR}/get-pip.py
sudo python3.4 ${BASE_DIR}/get-pip.py -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com -q

sudo pip3.4 install redis requests flask flask-mail -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com -q

#安装redis-server
sudo apt-get -qy install redis-server 


#运行云监工

sudo chmod +x ${BASE_DIR}/run.sh && sudo chmod +x ${BASE_DIR}/down.sh  
sudo sh ${BASE_DIR}/run.sh

#sudo python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm_hlper.py &
#sudo python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm.py &

