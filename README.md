# Homepi docker setup

```
ansible-playbook playbooks/deploy.yml
ansible-playbook --limit dev --extra-vars="compose=/srv/homepi/dev/docker-compose.yml" playbooks/deploy.yml
```
