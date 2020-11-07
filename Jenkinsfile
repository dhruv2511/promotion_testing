pipeline {
  agent any

  stages {
    stage('Deliver for development') {
        when {
            branch 'development'
        }
        steps {
            CHOICES = ["dir1", "dir2", "dir3"]
            deployment.Directory = input message: 'Select a directory to add to test branch', ok : 'Deploy',id :'tag_id',
                                        parameters:[choice(choices: CHOICES, description: 'Select a tag for this build', name: 'TAG')] 
            sh 'chmod +x ./jenkins/scripts/deliver-for-development.sh'
            sh './jenkins/scripts/deliver-for-development.sh'
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
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
