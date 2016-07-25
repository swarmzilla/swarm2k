#!/bin/bash
SWARM2KID="swarm2k"

for machine in `docker-machine ls --format {{.Name}}`;
do
    ansible-playbook -M library --extra-vars "{machine_name: $machine}" swarm2k/join_swarm2k.yml
done
