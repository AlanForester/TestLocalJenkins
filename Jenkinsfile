pipeline {
  agent any
  environment {
    CI = 'true'
  }
  stages {
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
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