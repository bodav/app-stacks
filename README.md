# Homepi docker setup

```
ansible-playbook deploy.yaml
ansible-playbook --limit dev --extra-vars="compose=/srv/home-apps/dev/compose.yaml" deploy.yaml
curl -H "Authorization: Bearer mytoken" http://app.home:8086/v1/update
```
