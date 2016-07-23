#!/bin/bash
set -x
#-------------------------------------------------------------------------------------------------------------
# Usage:
#
# Create all nodes:
#   $ DO_TOKEN=<your-do-access-token> ./create-swarm2k-nodes-do.sh
#
#
# List all nodes:
#   $ docker-machine ls --filter 'name=hypriot*'
#   NAME            ACTIVE   DRIVER         STATE     URL                       SWARM   DOCKER        ERRORS
#   hypriot-sw001   -        digitalocean   Running   tcp://95.85.21.151:2376           v1.12.0-rc4
#   hypriot-sw002   -        digitalocean   Running   tcp://95.85.20.69:2376            v1.12.0-rc4
#   hypriot-sw003   -        digitalocean   Running   tcp://95.85.19.108:2376           v1.12.0-rc4
#   hypriot-sw004   -        digitalocean   Running   tcp://162.243.166.225:2376           v1.12.0-rc4
#   hypriot-sw005   -        digitalocean   Running   tcp://162.243.163.106:2376           v1.12.0-rc4
#   hypriot-sw006   -        digitalocean   Running   tcp://192.241.153.209:2376           v1.12.0-rc4
#
# Check Docker version of a single node/droplet
#   $ time docker-machine ssh hypriot-sw001 docker version
#
# Remove all nodes (remove all droplets at DO as well!)
#   $ docker-machine rm -f $(docker-machine ls --filter name=hypriot* -q)
#-------------------------------------------------------------------------------------------------------------

# Available Digital Ocean regions
#   "regions":["ams1","ams2","ams3","blr1","fra1","lon1","nyc1","nyc2","nyc3","sfo1","sfo2","sgp1","tor1"]

# Use the Digital Ocean TOKEN to access the API
### $DO_TOKEN
PREFIX=hypriot

# Define droplet size and data center
SIZE=512mb
REGION=ams2
IMAGE=ubuntu-15-10-x64

# Create n Docker droplets
REGION=ams2
for i in {1..3}; do
  node=$(printf "%03d\n" $i)
  # Now, let's create a droplet with docker-machine
  # - important: use 'testing' branch of the Docker APT repository to install latest Docker Engine 1.12.0-rc4
  time docker-machine create \
  --driver=digitalocean \
    --digitalocean-access-token=${DO_TOKEN} \
    --digitalocean-size=${SIZE} \
    --digitalocean-region=${REGION} \
    --digitalocean-private-networking=true \
    --digitalocean-image=${IMAGE} \
    --engine-install-url=https://test.docker.com \
    ${PREFIX}-sw${node} &
done

# Create n Docker droplets
REGION=nyc1
for i in {4..6}; do
  node=$(printf "%03d\n" $i)
  # Now, let's create a droplet with docker-machine
  # - important: use 'testing' branch of the Docker APT repository to install latest Docker Engine 1.12.0-rc4
  time docker-machine create \
  --driver=digitalocean \
    --digitalocean-access-token=${DO_TOKEN} \
    --digitalocean-size=${SIZE} \
    --digitalocean-region=${REGION} \
    --digitalocean-private-networking=true \
    --digitalocean-image=${IMAGE} \
    --engine-install-url=https://test.docker.com \
    ${PREFIX}-sw${node} &
done

# List all nodes
docker-machine ls --filter name=${PREFIX}*
