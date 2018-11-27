pipeline {
  agent any

  stages {
    stage('npm') {
      steps {
        sh 'npm install'
      }
    }
    stage('checkDeps') {
      steps {
        sh './checkDeps.sh'
      }
    }
    stage('build') {
      steps {
        sh 'npm run build:all'
      }
    }
  }
  /* post { */
  /*   success { */
  /*     telegramSend 'The Latest Build of Brushup succeeded ${env.BUILD_NUMBER}' */
  /*   } */
  /*   failure { */
  /*     telegramSend 'The Latest Build of Brushup failed http://65.190.131.62:8080/job/SoftwareDev-2019/' */
  /*   } */
  /*   aborted { */
  /*     telegramSend 'Someone aborted the recent Brushup build http://65.190.131.62:8080/job/SoftwareDev-2019/' */
  /*   } */
  /* } */
}
