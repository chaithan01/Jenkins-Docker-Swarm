#!/bin/bash 
# initialize swarm
docker-machine ssh $LEADER_NODE docker swarm init --advertise-addr $LEADER_IP
