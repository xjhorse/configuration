# 安装配置管理
简单、灵活安装部署新疆马业实例

## 服务器配置要求
Ubuntu 16.04 amd64
Minimum 8GB of memory
At least one 2.00GHz CPU or EC2 compute unit
Minimum 25GB of free disk

## 安装步骤

### 1、更新Ubuntu操作系统

    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo reboot

### 2、自助安装Ansible等模块

    wget https://raw.githubusercontent.com/xjhorse/configuration/master/ansible-bootstrap.sh -O - | sudo bash