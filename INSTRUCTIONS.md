# Instructions

Welcome on board!! We sincerely thank you all for joining us.
This document provides some hopefully useful instructions to prepare
the machine's image for spinning a node to join the Swarm created by this project, and the join instructions.

# Node Image Preparation for Massive Duplication

  1. Install Ubuntu 16.04 (or choose your own OS)
  2. As root, run `curl -sSL https://experimental.docker.com | sh`
  3. Stop the Docker service, run `service docker stop`
  4. Remove the key file, run `rm /etc/docker/key.json`. *This is the really important step.*
  5. Shut it down and take snapshot

# Joining the hard way

  1. SSH to each of your node
  2. Check if you're really running Docker 1.12-rc4. Run `$ docker version`
  3. Start joining. Run `$ docker swarm join <IP>:2377 --secret <SECRET>`
  4. Logout

Please feel free to use any script to loop over those.

# Joining via SSH single-liner

Assuming that you've got a node setup with root access via SSH and key pairs, just do this single-liner for each node:

`ssh root@<YOUR NODE IP> docker swarm join <MANAGER IP>:2377 --secret <SECRET>`

For large scale, please feel free to use any script to loop over those.
