# Now let's get the swarm join token for a worker node
JOIN_TOKEN=`docker-machine ssh $LEADER_NODE docker swarm join-token worker -q`
