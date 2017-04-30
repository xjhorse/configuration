#!/usr/bin/env bash

set -xe

if [[ -z "${CONFIGURATION_REPO}" ]]; then
  CONFIGURATION_REPO="https://github.com/xjhorse/configuration.git"
fi

if [[ -z "${CONFIGURATION_VERSION}" ]]; then
  CONFIGURATION_VERSION="master"
fi

if [[ $(id -u) -ne 0 ]] ;then
    echo "Please run as root";
    exit 1;
fi


# 更新操作系统
apt-get update -y
apt-key update -y
apt-get upgrade -y

# add-apt-repository需要的模块
apt-get install -y software-properties-common python-software-properties

# 安装git等必须的模块
apt-get update -y
apt-get install -y build-essential sudo git-core python-dev python-pip python-apt python-yaml libmysqlclient-dev

# 升级pip
pip install --upgrade pip

pip install setuptools
pip install virtualenv
pip install ansible