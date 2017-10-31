#!/bin/bash 
# Other nodes join as workers
for n in $(seq 2 $NUMBER_NODES); do
  docker-machine ssh node-$n docker swarm join --token $JOIN_TOKEN $LEADER_IP:2377
done;
