pipeline {
  agent any

  stages {
    stage('npm') {
      steps {
        sh 'npm install'
      }
    }
    stage('lint') {
      steps {
        sh 'npm run lint'
      }
    }
    stage('build') {
      steps {
        sh 'npm run build:desktop'
      }
    }
  }
  post {
    always {
      telegramSend 'Built ${env.BUILD_TAG} ${env.BUILD_URL}'
    } 
  }
}
