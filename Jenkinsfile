pipeline {
    agent any

    stages {
        stage('Create nodes') {
            steps {
                sh create-nodes.sh
            }
        }
        stage('Initialize swarm') {
            steps {
                sh init-swarm.sh
            }
        }
        stage('Workers join') {
            steps {
                // Other nodes join as workers
                sh join-workers.sh
            }
        }
        stage('Visualizer') {
            steps {
                // Visualize the cluster on port 8081
                sh visualizer.sh
    }
}
