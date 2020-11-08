pipeline {
  agent any
  stages {
    stage('Deliver for development') {
        input  {
          message "Select directories to be added"
          parameters {
            string(name: 'Commit_Id', defaultValue: env.GIT_COMMIT, description: 'Latest Commit id needed to push changes to different branches')
            choice(name: 'dir', choices:['dir1', 'dir2', 'dir3'], description: 'Directories to be committed to differnt branch')
          }
        }
        steps {
            sh './jenkins/scripts/deliver-for-development.sh'
        }
    }
  }
}
