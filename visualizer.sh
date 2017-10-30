#!/bin/bash 
docker service create \
--name=viz \
--publish=8081:8081/tcp \
--constraint=node.role==manager \
--mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
dockersamples/visualizer
