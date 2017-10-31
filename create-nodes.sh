#!/bin/bash 

NUMBER_NODES=10
LEADER_NODE=node6

# create nodes
for NODE in $(seq 6 $NUMBER_NODES)
do
  docker-machine rm node$NODE
  docker-machine create --driver virtualbox node$NODE
done

LEADER_IP=`docker-machine ip $LEADER_NODE`
