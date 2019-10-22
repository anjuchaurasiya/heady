properties([parameters([choice(choices: 'master\ndev\nfeature', description: 'Deploy the selected branch', name: 'branch')])])
properties([parameters([choice(choices: 'Dev\nProduction', description: 'Selct the SDLC to deploy', name: 'SDLC')])])
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo "Deploying the respective branch ${params.branch}"
                git url: "https://github.com/anjuchaurasiya/heady.git", branch: "${params.branch}" 
            }
        }
        stage('Removing the current running containers') {
            steps {
                sh 'chmod +x ./remove.sh'
                sh './remove.sh'
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
                sh 'docker run -p 8082:80 -d load-balanced-app'
                sh 'docker run -p 8083:80 -d load-balanced-app'
                sh 'docker run -p 8084:80 -d load-balanced-nginx'
            }
        }
    }
}
