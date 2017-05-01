# 新疆马业科技服务平台安装配置管理
简单、灵活安装部署新疆马业实例
新疆马业科技服务平台采用多台服务器分布式安装，其中：
- 伯乐学堂使用一台服务器，安装open Edx Mooc平台
- 新疆马业数据库使用一台服务器，安装MySQL数据库服务器、memcache缓存服务器和postfix邮件服务器
- 新疆马业门户网站使用一台服务器，安装Django框架、Django REST框架及网站App
## 一、安装配置新疆马业数据存储服务器
### 服务器配置要求
- Ubuntu 16.04 amd64
- 至少4GB内存
- 至少一颗2.00GHz CPU或一个Amazon AWSEC2实例
- 至少25GB可用磁盘空间

### 安装步骤

#### 1、更新Ubuntu操作系统

    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo reboot

#### 2、自助安装Ansible等模块

    wget https://raw.githubusercontent.com/xjhorse/configuration/master/ansible-bootstrap.sh -O - | sudo bash

#### 3、克隆新疆马业安装配置资源库
    cd /var/tmp
    git clone https://github.com/xjhorse/configuration.git

#### 4、安装新疆马业存储服务器

    cd /var/tmp/configuration/playbooks
    sudo -H ansible-playbook -c local ./datastores.yml -i "inventory.ini"

## 二、安装配置新疆马业门户网站服务器