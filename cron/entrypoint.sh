#!/bin/sh

rm -rf /opt/ops
git clone --depth=1 $REPO /opt/ops

cat <<EOF | crontab -
0 4 * * 0,1,2,3,4,6 ansible-playbook --limit $ANSIBLE_TARGET /opt/ops/playbooks/dockcheck_avail.yaml
0 6 * * 5 ansible-playbook --limit $ANSIBLE_TARGET /opt/ops/playbooks/dockerprune.yaml
0 5 * * 5 ansible-playbook --limit $ANSIBLE_TARGET /opt/ops/playbooks/dockcheck.yaml
EOF

echo "########################"
crontab -l
echo "########################"

crond -f -l 0