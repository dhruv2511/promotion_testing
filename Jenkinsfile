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
            script{
                    // Checkout the repository and save the resulting metadata
              def scmVars = checkout([
                $class: 'GitSCM',
                ...
              ])

              // Display the variable using scmVars
              echo "scmVars.GIT_COMMIT"
              echo "${scmVars.GIT_COMMIT}"

              // Displaying the variables saving it as environment variable
              GIT_COMMIT = scmVars.GIT_COMMIT
              echo "env.GIT_COMMIT"
              echo "${env.GIT_COMMIT}"
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
