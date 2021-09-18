pipeline {
  agent { docker { image 'python:3.7.2' } }
  environment {
    CI = 'true'
  }
  stages {
    stage('build') {
      steps {
        sh 'pip    install -r     requirements.txt'
      }
    }
    stage('lint') {
      steps {
        sh 'make lint'
      }
    }
    stage('test') {
      steps {
        sh 'make test'
      }
    }
  }
}