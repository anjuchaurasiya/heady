pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/anjuchaurasiya/heady.git'
            }
        }
        stage('Removing the current running containers') {
            steps {
                sh 'chmod +x ./remove.sh && ./remove.sh'
            }
        }
        stage('Build the docker images') {
            steps {
                sh 'cd app-docker && docker build -t load-balanced-app .'
   		        sh 'cd nginx-docker && docker build -t load-balanced-nginx .'
            }
        }
        stage('Run the docker containers') {
            steps {
                sh 'docker run -p 8081:80 -d load-balanced-app .'
   		        sh 'docker run -p 80:8083 -d load-balanced-nginx'
            }
        }
    }
}
