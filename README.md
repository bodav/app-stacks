# Homepi docker setup

```
cp .devcontainer/sample.ansible.env .devcontainer/ansible.env

ansible-playbook --limit prod push-repo.yaml

docker run --rm -it --network=proxynet jonlabelle/network-tools
```
