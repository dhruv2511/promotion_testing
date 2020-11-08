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
            string(name: 'Commit_Id', defaultValue: env.GIT_COMMIT, description: 'Latest Commit id needed to push changes to different branches')
            choice(name: 'dir', choices:['dir1', 'dir2', 'dir3'], description: 'Directories to be committed to differnt branch')
          }
        }
        steps {
            dir('/tmp/JobDir') {
              sh 'echo $PWD'
              sh './jenkins/scripts/deliver-for-development.sh $Commit_Id $dir'
            }
            
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
