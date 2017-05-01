#!/usr/bin/env bash

set -xe

if [[ $(id -u) -ne 0 ]] ;then
    echo "请通过sudo以root身份运行该脚本！";
    exit 1;
fi


# 更新操作系统
apt-get update -y
apt-get upgrade -y


# 1、安装git
apt-get install -y git-core

# 2、安装开发基础模块
apt-get install -y build-essential libssl-dev libffi-dev libmysqlclient-dev

# 3、安装python3开发相关模块
apt-get install -y python3-dev python3-pip python3-apt python3-yaml python3-venv 

# 安装virtualenv
pip3 install virtualenv

# 4、安装ansible
pip3 install ansible==2.2.0.0