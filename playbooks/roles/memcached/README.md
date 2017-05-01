memcached
========

该role用来在目标主机安装memcached服务器

Requirements
------------

该role需要Ansible版本不低于1.4，支持的操作系统平台列示与metadata文件中

Role Variables
--------------

可以向该role传递的参数如下：

    memcached_port: 11211              # memcached服务器监听端口
    memcached_listen_address: 0.0.0.0  # memcached服务器监听的IP地址
    memcached_max_conn: 1024           # 最大并发链接数量
    memcached_cache_size: 64           # 缓存大小
    memcached_fs_file_max: 756024      # 最大处理文件核心参数

Example
-------

下列例子用指定的端口和缓存来安装memcached

	- hosts: all
	  sudo: true
	  roles:
	  - {role: memcached, memcached_port: 11244, memcached_cache_size: 512 }

Dependencies
------------

None

License
-------

BSD

Author Information
------------------

Benno Joy

