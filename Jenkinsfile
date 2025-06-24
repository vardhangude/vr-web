pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t vr-web .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker stop vr-web-container || true'
                sh 'docker rm vr-web-container || true'
                sh 'docker run -d -p 8082:80 --name vr-web-container vr-web'
            }
        }
    }
}


