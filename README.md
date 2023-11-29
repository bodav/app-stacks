# Homepi docker setup

```
ansible-playbook deploy.yaml
ansible-playbook --limit dev --extra-vars="compose=/srv/home-apps/dev/compose.yaml" deploy.yaml
```
