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
            sh '$latest_commit_id = git rev-parse HEAD'
            sh 'echo Latest commit id is: ${latest_commit_id}'

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
