Ansible
=========

Role to install Ansible from git clone.
By default no variables required.


Role Variables
--------------

defaults/main.yml

```
ansible_inst:
 dir: /opt/ansible
 add_evn_setup_hack_sys_wide: True
```


Example Playbook
----------------

```
- hosts: servers
  roles:
     - ansible
```


License
-------

MIT


Author Information
------------------

Tal Lannder

tal@pjili.org
