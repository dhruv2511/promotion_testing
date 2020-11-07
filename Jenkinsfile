pipeline {
  agent any
  stages {
    stage('Deliver for development') {
        when {
            branch 'development'
        }
        input  {
          message "Select directories to be added"
          parameters {
            choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
          }
        }
        steps {
            sh 'git log -n 1 --pretty=format:'%h''
            sh './jenkins/scripts/deliver-for-development.sh'

        }
    }

    stage('Deliver for production') {
        when {
            branch 'test'
        }
        steps {
            sh 'echo "Hello World!!!"'
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
        }
    }
  }
}
