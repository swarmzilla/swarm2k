#!/bin/bash
set -x
#-------------------------------------------------------------------------------------------------------------
# Usage:
#
# Create all nodes:
#   $ DO_TOKEN=<your-do-access-token> ./ssh-command-do.sh 'docker -v'
#
#-------------------------------------------------------------------------------------------------------------

# Use the Digital Ocean TOKEN to access the API
### $DO_TOKEN
PREFIX=hypriot

for i in {1..6}; do
  node=$(printf "%03d\n" $i)
  time docker-machine ssh ${PREFIX}-sw${node} $1
done
