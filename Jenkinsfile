pipeline {
  agent any
  stages {
    stage('Create nodes') {
      steps {
        sh './create-nodes.sh'
      }
    }
    stage('Initialize swarm') {
      steps {
        sh './init-swarm.sh'
      }
    }
    stage('Workers token') {
      steps {
        sh './workers-token.sh'
      }
    }
    stage('Workers join') {
      steps {
        sh './workers-join.sh'
      }
    }
    stage('Visualizer') {
      steps {
        sh './visualizer.sh'
      }
    }
  }
}
