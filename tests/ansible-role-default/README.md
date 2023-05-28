# [default](#default)

Install and configure default on your system.

|GitHub|GitLab|Quality|Downloads|Version|
|------|------|-------|---------|-------|
|[![github](https://github.com/mullholland/ansible-role-default/workflows/Ansible%20Molecule/badge.svg)](https://github.com/mullholland/ansible-role-default/actions)|[![gitlab](https://gitlab.com/opensourceunicorn/ansible-role-default/badges/master/pipeline.svg)](https://gitlab.com/opensourceunicorn/ansible-role-default)|[![quality](https://img.shields.io/ansible/quality/)](https://galaxy.ansible.com/mullholland/default)|[![downloads](https://img.shields.io/ansible/role/d/)](https://galaxy.ansible.com/mullholland/default)|[![Version](https://img.shields.io/github/release/mullholland/ansible-role-default.svg)](https://github.com/mullholland/ansible-role-default/releases/)|

## [Example Playbook](#example-playbook)

This example is taken from [`molecule/default/converge.yml`](https://github.com/mullholland/ansible-role-default/blob/master/molecule/default/converge.yml) and is tested on each push, pull request and release.

```yaml
---
- name: Converge
  hosts: all
  become: yes
  gather_facts: yes

  roles:
    - role: mullholland.default
```

The machine needs to be prepared. In CI this is done using [`molecule/default/prepare.yml`](https://github.com/mullholland/ansible-role-default/blob/master/molecule/default/prepare.yml):

```yaml
---
- name: Prepare
  hosts: all
  become: yes
  gather_facts: no

  roles:
    - role: robertdebock.bootstrap
```


## [Role Variables](#role-variables)

The default values for the variables are set in [`defaults/main.yml`](https://github.com/mullholland/ansible-role-default/blob/master/defaults/main.yml):

```yaml
---
# defaults file for default

```

## [Requirements](#requirements)

- pip packages listed in [requirements.txt](https://github.com/mullholland/ansible-role-default/blob/master/requirements.txt).

## [State of used roles](#state-of-used-roles)

The following roles are used to prepare a system. You can prepare your system in another way.

| Requirement | GitHub | GitLab |
|-------------|--------|--------|
|[robertdebock.bootstrap](https://galaxy.ansible.com/mullholland/robertdebock.bootstrap)|[![Build Status GitHub](https://github.com/mullholland/robertdebock.bootstrap/workflows/Ansible%20Molecule/badge.svg)](https://github.com/mullholland/robertdebock.bootstrap/actions)|[![Build Status GitLab](https://gitlab.com/opensourceunicorn/robertdebock.bootstrap/badges/master/pipeline.svg)](https://gitlab.com/opensourceunicorn/robertdebock.bootstrap)|

## [Context](#context)

This role is a part of many compatible roles. Have a look at [the documentation of these roles](https://mullholland.net) for further information.

Here is an overview of related roles:
![dependencies](https://raw.githubusercontent.com/mullholland/ansible-role-default/png/requirements.png "Dependencies")

## [Compatibility](#compatibility)

This role has been tested on these [container images](https://hub.docker.com/u/mullholland):

|container|tags|
|---------|----|
|[Alpine](https://hub.docker.com/repository/docker/mullholland/docker-alpine-systemd/general)|all|
|[Amazon](https://hub.docker.com/repository/docker/mullholland/docker-amazonlinux-systemd/general)|all|
|[Debian](https://hub.docker.com/repository/docker/mullholland/docker-debian-systemd/general)|all|
|[EL](https://hub.docker.com/repository/docker/mullholland/docker-centos-systemd/general)|all|
|[Fedora](https://hub.docker.com/repository/docker/mullholland/docker-fedora-systemd/general)|all|
|[opensuse](https://hub.docker.com/repository/docker/mullholland/docker-opensuse-systemd/general)|all|
|[Ubuntu](https://hub.docker.com/repository/docker/mullholland/docker-ubuntu-systemd/general)|all|

The minimum version of Ansible required is 2.10, tests have been done to:

- The previous version.
- The current version.
- The development version.

If you find issues, please register them in [GitHub](https://github.com/mullholland/ansible-role-default/issues)

## [License](#license)

[Apache-2.0](https://github.com/mullholland/ansible-role-default/blob/master/LICENSE).

## [Author Information](#author-information)

[robertdebock](https://mullholland.net)

Please consider [sponsoring me](https://github.com/sponsors/mullholland).
