#!/bin/bash 

NUMBER_NODES=5
LEADER_NODE=node_1

# create nodes
for NODE in $(seq 1 $NUMBER_NODES); do
  docker-machine create --driver virtualbox node_$NODE
done;

LEADER_IP=`docker-machine ip $LEADER_NODE`
