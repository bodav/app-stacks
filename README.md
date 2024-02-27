# Homepi docker setup

```
cp .devcontainer/sample.ansible.env .devcontainer/ansible.env

ansible-playbook --limit homepi.local push-repo.yaml

docker run --rm -it --network=reverseproxy-net jonlabelle/network-tools
```
