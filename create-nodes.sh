#!/bin/bash 

NUMBER_NODES=5
LEADER_NODE=node-1

# create nodes
for NODE in $(seq 1 $NUMBER_NODES)
do
  echo node_$NODE
  docker-machine create --driver virtualbox node$NODE
done

LEADER_IP=`docker-machine ip $LEADER_NODE`
