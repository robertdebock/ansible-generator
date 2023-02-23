# Usage

```
./gitlab.yml --ask-vault-password -e role=ansible-role-xyz
```

## Bulk

To update all roles:

```
echo "PASSWORD" > /tmp/bla.txt

ls -d ../ansible-role-* | cut -d/ -f2 | while read role ; do
  echo "${role}"
  ./gitlab.yml --vault-password-file=/tmp/bla.txt -e role="${role}"
done
```
