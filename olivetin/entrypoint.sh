#!/bin/sh

rm -rf /opt/ops
git clone --depth=1 $REPO /opt/ops

/usr/local/bin/OliveTin