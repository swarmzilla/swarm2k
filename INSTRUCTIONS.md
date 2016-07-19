# Instructions

Welcome on board!! We sincerely thank you all for joining us.

# Joining the hard way

  1. SSH to each of your node
  2. Check if you're really running Docker 1.12-rc4. Run `$ docker version`
  3. Start joining. Run `$ docker swarm join <IP>:2377 --secret <SECRET>`

Please feel free to use any script to loop over those.

# Joining via single-line SSH

Assuming that you've got a node setup with Root access via SSH and key pairs, just do this single-liner for each node:

`ssh root@<YOUR NODE IP> docker swarm join <MANAGER IP>:2377 --secret <SECRET>`

For large scale, please feel free to use any script to loop over those.
