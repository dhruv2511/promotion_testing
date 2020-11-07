pipeline {
  agent any
  parameters {
    string(name: 'branch', defaultValue: checkout([
      $class: 'GitSCM',
      branches: [[name: 'origin/test']],
      extensions: [[$class: 'WipeWorkspace']],
      userRemoteConfigs: [[url: 'git@bitbucket.org:NAVFREG/jenkinsfile-tests.git']],
      doGenerateSubmoduleConfigurations: false
    ]), description: "Test branch to be checked out")
  }
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
            sh 'chmod +x ./jenkins/scripts/deliver-for-development.sh'
            sh 'echo ${params.branch}'
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
