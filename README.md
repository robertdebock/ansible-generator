# ansible-generator

Generate documentation and continuous integration files for an Ansible Role.

The intention is to focus on writing or maintaining the Ansible role, and use this tool to generate chore-like-tasks.

## Overview

```text
+--- role ----------------------+                     +--- role -------------------------------+
| meta/main.yml                 |                     | README.md                              |
| molecule/default/converge.yml |                     | bug_report.md                          |
| meta/preferences.yml          |                     | feature_requests.md                    |
| requirements.yml              |                     | FUNDING.md                             |
| molecule/default/prepare.yml  |                     | .gitignore                             |
| molecule/default/verify.yml   |                     | .pre-commit.config.yaml                |
| defaults/main.yml             |                     | .yamllint                              |
+------------------------+------+                     | .ansible-lint                          |
                         |                            | CONTRIBUTING.md                        |
+--- this tool -----+    |                            | .github/workflows/galaxy.yml           |
| defaults/main.yml | ---+                            | .gitlab-ci.yml                         |
| vars/main.yml     |    |                            | LICENSE                                |
| files/*           |    |                            | .github/workflows/molecule.yml         |
| templates/*       |    |                            | molecule/default/molecule.yml          |
+-------------------+    |    +--- this tool ---+     | .github/workflows/requirements2png.yml |
                         +--> | generate.yml    | --> | SECURITY.md                            |
                              +-----------------+     | settings.yml                           |
                                                      | .github/workflows/todo.yml             |
                                                      | .tox.ini                               |
                                                      +----------------------------------------+
```

## Usage

```bash
cd ansible-role-my_role
../path/to/generate.yml
```

## Configuration

In `defaults/main.yml` you can change these variable to customize the output.

### Settings to Docker containers

- `docker_namespace`
- `docker_image`
- `docker_tag`

### Your username on Galaxy

- `galaxy_namespace`

### Your username/organization name on GitHub

- `github_namespace`

### Your username/group on GitLab

- `gitlab_namespace`

### Your name and optionally email-address

- `author`

### The full URL to your website

- `author_website`

## meta/preferences.yml

This (optional) file describes how Tox and Molecule should behave.

|parameter               |type           |default|description                                                                                                                                              |
|------------------------|---------------|-------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
|tox_ansible_versions    |list of strings|[[5,6,7]](https://github.com/robertdebock/ansible-generator/blob/master/templates/tox.ini.j2#L7)|What versions should Tox test? (Default: all.)                                                                                                           |
|github_variables_mapping|list           |not set|A list of `name` and `variable`, `name` refers to the GitHub exposed name, `variable` refers to the name you'd like to pass to molecule, tox and Ansible.|

## Example

```yaml
---
tox_ansible_versions:
  - 6
  - 7

github_variables_mapping:
  - name: secrets.VAULT_LICENSE
    variable: VAULT_LICENCE
  - name: secrets.MY_VAR
    variable: someTHING
```
