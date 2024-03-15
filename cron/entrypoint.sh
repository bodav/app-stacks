#!/bin/sh

ansible-pull -U $REPO -i hosts

crontab -l
crond -f -l 0