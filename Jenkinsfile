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
                    string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
                }
        }
        steps {

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
