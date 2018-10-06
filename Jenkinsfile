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
    success {
      telegramSend 'The Latest Build of Brushup succeeded ${env.BUILD_NUMBER}'
    }
    failure {
      telegramSend 'The Latest Build of Brushup failed http://65.190.131.62:8080/job/SoftwareDev-2019/'
    }
    aborted {
      telegramSend 'Someone aborted the recent Brushup build http://65.190.131.62:8080/job/SoftwareDev-2019/'
    }
  }
}
