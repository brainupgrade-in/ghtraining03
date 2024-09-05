pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker Image using webhook - 13'
                script {
                    def image = docker.build("brainupgrade/ghtraining03:${env.BUILD_ID}")
                }
            }
        }
    }
}