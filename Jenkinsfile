pipeline {
  agent any

  stages {
    stage('Deliver for development') {
        when {
            branch 'development'
        }
        steps {
            input {
              message: "Select directories needed"
              parameters {
                string(name: 'Directory', description: 'Which directories need to be commited?')
              } 
            }
            sh 'chmod +x ./jenkins/scripts/deliver-for-development.sh'
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
