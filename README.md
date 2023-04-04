# Homepi docker setup

```
ansible-playbook deploy.yml
ansible-playbook --limit dev --extra-vars="compose=/srv/homepi/dev/docker-compose.yml" deploy.yml
```
