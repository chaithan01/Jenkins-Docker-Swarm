pipeline {
  agent any
  stages {
    cleanWs ()
    stage('Create nodes') {
      steps {
        sh 'chmod u+x ./create-nodes.sh'
        sh './create-nodes.sh'
      }
    }
    stage('Initialize swarm') {
      steps {
        sh 'chmod u+x ./init-swarm.sh'
        sh './init-swarm.sh'
      }
    }
    stage('Workers token') {
      steps {
        sh 'chmod u+x ./workers-token.sh'
        sh './workers-token.sh'
      }
    }
    stage('Workers join') {
      steps {
        sh 'chmod u+x ./workers-join.sh'
        sh './workers-join.sh'
      }
    }
    stage('Visualizer') {
      steps {
        sh 'chmod u+x ./visualizer.sh'
        sh './visualizer.sh'
      }
    }
  }
}
