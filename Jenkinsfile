pipeline {
  agent 

  stages {
    stage('Deliver for development') {
        when {
            branch 'development'
        }
        steps {
            sh './jenkins/scripts/deliver-for-development.sh'
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
        }
    }

  }
}
