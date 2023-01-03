# ansible-generator

Generate documentation and continuous integration files for an Ansible Role.

## Input

This script loads input from:

- meta/main.yml*
- meta/preferences.yml
- defaults/main.yml
- requirements.yml
- molecule/default/prepare.yml
- molecule/default/converge.yml*
- molecule/default/verify.yml
- generate_modules.sh
- secure.yml
- Ansible Galaxy

(Items with a star are mandatory)

## Output

This script writes output to:

- README.md
- molecule/default/molecule.yml
- CONTRIBUTING.md
- SECURITY.md
- LICENSE
- .travis.yml
- tox.ini
- .ansible-lint*
- .github/workflows/ansible.yml
- .github/workflows/galaxy.yml

## Usage

```bash
cd ansible-role-my_role
../path/to/generate.yml
```

## Configuration

In `vars/main.yml` you can change these variable to customize the output.

```yaml
---
# Settings to Docker containers.
docker_namespace: robertdebock
docker_image: fedora
docker_tag: latest

# References to travis use a namespace, this is likely your username on Travis.
travis_namespace: robertdebock

# Documentation refers to Ansible Galaxy. this is likely your username on Galaxy.
galaxy_namespace: robertdebock

# Your username/organization name on GitHub.
github_namespace: robertdebock

# Your name and optionally email-address.
author: Robert de Bock (robert@meinit.nl)

# The full URL to your website.
author_website: "https://robertdebock.nl/"
```

## meta/preferences.yml

This optional file describes how Travis, Tox and Molecule should behave.

|parameter            |type           |default|description                                                                             |
|--------------------|---------------|-------|-----------------------------------------------------------------------------------------|
|tox_ansible_versions|list of strings|not set|What versions should Tox test? (Default: all.)                                           |
|enterprise_linux    |string         |not set|If `EL` is used in `meta/main.yml` where should tests happen on? (Default: `rockylinux`.)|


```yaml
---
tox_ansible_versions:
  - 7
enterprise_linx: centos
```
