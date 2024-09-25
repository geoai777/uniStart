#!/bin/bash

[[ `whoami` != "root" ]] && echo "Come back as root" && exit 0

echo
echo " [ UPSTART ]"
[[ ! -z `which initctl` ]] && initctl list || echo "none"

echo
echo " [ System V ]"
[[ ! -z `which service` ]] && service --status-all || echo "none"

echo
echo " [ SystemD ]"
[[ ! -z `which systemctl` ]] && systemctl --all list-unit-files --type=service
