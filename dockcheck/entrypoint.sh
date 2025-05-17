#!/bin/sh

sed -i 's/GotifyToken="[^"]*"/GotifyToken='"$GOTIFY_TOKEN"'/' /app/notify_gotify.sh

cat <<EOF | crontab -
0 5 * * 5 ansible-playbook --limit dockerhost /app/dockcheck.ansible.yaml
EOF

echo "########################"
crontab -l
echo "########################"

crond -f -l 0