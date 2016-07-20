# Swarm2k (2,869) - This Friday, 22 July 2016 3.00PM UTC

The [#DockerSwarm2000](https://twitter.com/hashtag/DockerSwarm2000) Project is a global-scale collaborative project to do some scalable experiments on Docker Swarm mode. We need your help!

# Contribution Proposal

**We are now beyond 2,000 nodes already! Thank you for all of your contributions.**
You can still adding nodes to join our cluster. We put your name, your company and link here in the table below.

| Name | Company | Number of Nodes Expected to Contribute |
| ------------- |:-------------:|:-----:|
| [@chanwit](https://twitter.com/chanwit) | Suranaree University | 100 |
| [@djalal](https://twitter.com/enlamp) | N/A | 10 |
| [@thaJeztah](https://twitter.com/thaJeztah) | Docker | 20 |
| [@nigelpoulton](https://twitter.com/nigelpoulton) | Personal | 20 |
| [@akalipetis](https://twitter.com/akalipetis) | SourceLair | 20 |
| [@toughiq](https://twitter.com/toughiq) | N/A | 5 |
| [@squeaky_pl](https://twitter.com/squeaky_pl) | Personal | 5 |
| [@ingshtrom](https://twitter.com/ingshtrom) | Odyssey | 1000 |
| [@ben_hall](https://twitter.com/ben_hall) | Katacoda.com | 25 |
| [@ajeetsraina](https://twitter.com/ajeetsraina) |  Dell Inc. | 8 |
| [@KanashimaS](https://twitter.com/KanashimaS) |  N/A | 3 |
| [@everett_toews](https://twitter.com/everett_toews) | Rackspace | 100 |
| [@obarbier](https://twitter.com/obarbier) | tillersystems.com | 3 |
| [@bangkokvps](https://twitter.com/bangkokvps) | bangkokvps.com| 20 |
| [@laurentgrangeau](https://twitter.com/laurentgrangeau) | Finaxys | 5 |
| [@scaleway](https://twitter.com/scaleway) | Scaleway | 1200 |
| [@mokkahei24](https://twitter.com/mokkahei24) | Playa | 3 |
| [@f_soppelsa](https://twitter.com/f_soppelsa) | Personal | 10 |
| [@abhisak](https://twitter.com/abhisak) | NIPA Technology | 100 |
| [@Aternos](https://twitter.com/Aternos) | Aternos | 7 |
| [@inetcloudarch ](https://twitter.com/inetcloudarch) | Internet Thailand | 200 |
| [@fdoxyz](https://twitter.com/fdoxyz) | N/A | 5 |
| [@mrnonaki](https://twitter.com/mrnonaki) | N/A | 5 |

# What are we doing?
We are trying to form a large, 2000 nodes, Docker Swarm mode cluster collaboratively. It is expected that we'll learn a lot about the limitations of Docker 1.12 Swarm mode in process. This will help us and also the Docker team moving forwards to have the better scalable container system.

![the architecture](https://pbs.twimg.com/media/CnoaWoZVIAAwO7p.jpg:large "The architecture")

Please follow hashtag [#DockerSwarm2000](https://twitter.com/hashtag/DockerSwarm2000) on Twitter.

# Where and When?
We'll be waiting for contributors to propose at least 2,000 nodes before starting. Please consider to contribute any number of nodes and be part of this global scale experiment. We need your help!

# How to join?
Please open a PR adding a line into the proposal table and put number of nodes you think you can contribute there.
Then tweet to [@chanwit](https://twitter.com/chanwit) saying that you'd like to contribute some nodes. We'll take care of the rest.

After starting the cluster, we'll provide Swarm manager's IP addresses and the secret for you to join.
It's going to take 2-3 hours of your CPU time depending on the completion of the joining process.
After that, we'll fill the cluster with large number of containers.

# What's mininum requirements of a node?

  * A cool guy to be the operator of your nodes, doing `docker swarm join <IP>:2377 --secret <SECRET>`. We'll provide IP and SECRET later after the quorum is formed.
  * Linux 64-bit box with Kernel 4.x
  * RAM 512 MB
  * CPU 1 vCore
  * Docker 1.12-rc4 installed
  * Public IPv4 address
  * TCP port 2377 for cluster management
  * TCP and UDP port 7946 for communication among nodes
  * TCP and UDP port 4789 for overlay network

# Why we're not doing C1M?

The C1M challenge does not mean anything to me (@chanwit). What we are going to test are Docker Swarm mode features.
Of course, the scheduling feature is one of them. But we're going to also test *Routing Mesh Load-Balancing* and *Container Rescheduling* when a Manager failed.
