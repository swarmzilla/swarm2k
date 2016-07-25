#!/bin/bash
for i in `seq 0 9`; do
    docker-machine create -d amazonec2 --engine-install-url https://test.docker.com --amazonec2-instance-type "t2.large" swarm2k$i
done
