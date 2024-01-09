# Homepi docker setup

```
cp .devcontainer/sample.ansible.env .devcontainer/ansible.env

ansible-playbook --limit homepi.local pushrepo.yaml
```
