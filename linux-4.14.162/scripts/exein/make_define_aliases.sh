#!/bin/sh
sed -n '/union security_list_options {/,/};/p' include/linux/lsm_hooks.h |\
egrep "\(.*\)\(|^#" |\
sed -r 's/.*\(\*(.*)\)\(.*/\1/' |\
awk -f scripts/exein/hooks_define.awk
