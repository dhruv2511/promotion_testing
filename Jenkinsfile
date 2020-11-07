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
            BRANCH = checkout([
              $class: 'GitSCM',
              branches: [[name: 'origin/test']],
              extensions: [$class: 'WipeWorkspace']],
              userRemoteConfigs: [[url: 'https://github.com/dhruv2511/promotion_testing.git']],
              doGenerateSubmoduleConfigurations: false
            ])
            sh 'chmod +x ./jenkins/scripts/deliver-for-development.sh'
            sh './jenkins/scripts/deliver-for-development.sh $CHOICE'

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
