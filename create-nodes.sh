#!/bin/bash 

NUMBER_NODES=5
LEADER_NODE=node1

# create nodes
for NODE in $(seq 1 $NUMBER_NODES)
do
  docker-machine rm node$NODE
  docker-machine create --driver virtualbox node$NODE
done

LEADER_IP=`docker-machine ip $LEADER_NODE`
