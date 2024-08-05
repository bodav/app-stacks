.PHONY: push
push:
	ansible-playbook --limit prod push-repo.yaml

.PHONY: deploy
deploy:
	ansible-playbook --limit prod deploy.yaml