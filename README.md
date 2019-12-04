# ansible-generator

Generate documentation and continuous integration files for an Ansible Role.

## Input

This script loads input from:

- meta/main.yml*
- meta/version.yml
- meta/exception.yml
- meta/preferences.yml
- defaults/main.yml
- requirements.yml
- molecule/default/prepare.yml
- molecule/default/playbook.yml*
- molecule/default/verify.yml
- meta/logo.png
- generate_modules.sh
- compatibility.sh
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

## Usage

```
cd ansible-role-my_role
../path/to/generate.yml
```

## meta/version.yml

This optional file can be placed when a role contains a version.

```yaml
---
project_name: Ansible
reference: "defaults/main.yml"
versions:
  - name: ansible
    url: "https://github.com/ansible/ansible/releases"
```

## meta/exception.yml

This optional file describes why some build are excepted.

```yaml
---
exceptions:
  - variation: alpine
    reason: "Not idempotent"
```

## meta/preferences.yml

This optional file describes how Travis, Tox and Molecule should behave.

```yaml
---
travis_parallel: no
tox_versions:
  - current
```
