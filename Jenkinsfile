#!groovy
pipeline {
    agent {
      dockerfile true
    }

    options {
      // Abort if it takes 10+ minutes.
      timeout(10)

      // Only keep the last 20 builds.
      // Only keep the last 4 artifacts.
      buildDiscarder(logRotator(artifactNumToKeepStr: '4', numToKeepStr: '20'))
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
    post {
      always {
        // Clean up our workspace, delete all files.
        deleteDir()
      }
    }
}
