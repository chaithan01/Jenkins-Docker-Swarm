pipeline {
    agent any

    stages {
        stage('Create nodes') {
            steps {
                sh """
                NUMBER_NODES=5
                LEADER_NODE=node_1

                // create nodes
                for NODE in $(seq 1 $NUMBER_NODES); do
                  docker-machine create --driver virtualbox node_$NODE
                done;

                LEADER_IP=`docker-machine ip $LEADER_NODE`
                """
            }
        }
        stage('Initialize swarm') {
            steps {
                // get the swarm join token for a worker node
                sh """
                JOIN_TOKEN=`docker-machine ssh $LEADER_NODE docker swarm join-token worker -q`
                """
            }
        }
        stage('Workers join') {
            steps {
                // Other nodes join as workers
                sh """
                for n in $(seq 2 $NUMBER_NODES); do
                  docker-machine ssh node_$n docker swarm join --token $JOIN_TOKEN $LEADER_IP:2377
                done;
                """
            }
        }
        stage('Visualizer') {
            steps {
                // Visualize the cluster on port 8081
                sh """
                docker service create \
                --name=viz \
                --publish=8081:8081/tcp \
                --constraint=node.role==manager \
                --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
                dockersamples/visualizer
                """
    }
}
