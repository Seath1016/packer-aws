pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                docker.build(packer-ansible)
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
}
