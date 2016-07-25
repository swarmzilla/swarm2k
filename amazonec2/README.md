Get Ansible modules from <a href="https://github.com/fsoppelsa/ansible-swarm">https://github.com/fsoppelsa/ansible-swarm/library</a>

0. `cd library` and `go build docker_swarm.go`
1. `./create-machines.sh` that in my script goes with 10 instances on EC2
2. In `run.sh` adjust `SWARM2KID` to match the grep in for loop...
3. `./run.sh` execs the join_swarm2k.yml play and joins the workers to the `join_url` manager
4. Wait and enjoy with a beer 🍺
