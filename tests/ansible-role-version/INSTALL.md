Installation
=========

To use this Ansible role skeleton, as [described in Ansible Galaxy documentation](https://docs.ansible.com/ansible/latest/reference_appendices/galaxy.html#using-a-custom-role-skeleton):

```
ansible-galaxy init --role-skeleton=skeleton role_name
mv role_name ansible-role-role_name
cd ./ansible-role-role_name/
rm INSTALL.md
```

or add this to ansible.cfg:

```
[galaxy]
role_skeleton = /path/to/skeleton
role_skeleton_ignore = ^.git$,^.*/.git_keep$
```

Followed by `ansible-galaxy init role_name`.

Don't include `ansible-role` to the role name, for example use `java` instead of `ansible-role-java`.
