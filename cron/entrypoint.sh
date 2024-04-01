#!/bin/sh

ansible-pull -U $REPO -i hosts

echo "########################"
crontab -l
echo "########################"

crond -f -l 0