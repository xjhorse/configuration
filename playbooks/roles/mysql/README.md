MySQL Server
============

该role用来在RHEL和Ubuntu上安装MySQL Server
同时通过对root设置口令、删除测试数据库来增强MySQL Server的安全性

Requirements
------------

该role要求Ansible版本不低于1.4，支持的操作系统版本列示与metadata文件中

Role Variables
--------------

可以向该role传递的变量:

      mysql_port: 3306                   # MySQL服务器端口
      mysql_bind_address: "127.0.0.1"    # MySQL绑定地址
      mysql_root_db_pass: "password"     # MySQL root用户口令


Examples
--------

1) 使用缺省参数安装MySQL Server，即端口为3306、绑定地址为"127.0.0.1"、root用户口令为"password"


      - hosts: all
      - roles: mysql


2) 安装MySQL Server，指定绑定地址及root用户口令
      vars:
        # 允许外部服务器访问MySQL
        MYSQL_BIND_ADDRESS: "0.0.0.0"
        # root用户的新口令
        MYSQL_ROOT_PASS: "newpassword"
      - hosts: all
      - roles: mysql


Dependencies
------------

None

License
-------

BSD

Author Information
------------------

张太红