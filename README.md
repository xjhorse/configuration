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
#### 1、服务器网络配置
下面是采用VirtualBox虚拟机安装所使用的网络配置：
##### （1）、设置IP地址，编辑/etc/network/interfaces，内容如下：
    auto enp0s8
    iface enp0s8 inet static
    address 192.168.56.12
    netmask 255.255.255.0
##### （2）、指定DNS服务器，编辑/etc/resolvconf/resolv.conf.d/base，内容如下：
    nameserver 8.8.8.8
    nameserver 8.8.4.4

##### （3）、配置本地快速域名解析，编辑/etc/hosts文件，内容如下：
    127.0.0.1       localhost
    192.168.56.12 db.xjhorse.net
    192.168.56.13 www.xjhorse.net
#### 2、更新Ubuntu操作系统

    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo reboot

#### 3、自助安装Ansible等模块

    wget https://raw.githubusercontent.com/xjhorse/configuration/master/ansible-bootstrap.sh -O - | sudo bash

#### 4、克隆新疆马业安装配置资源库
    cd /var/tmp
    git clone https://github.com/xjhorse/configuration.git

#### 5、安装新疆马业存储服务器

    cd /var/tmp/configuration/playbooks
    sudo -H ansible-playbook -c local ./datastores.yml -i "inventory.ini"

## 二、安装配置新疆马业门户网站服务器