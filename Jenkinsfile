pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/sravya222/staticwebsitehosting.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('static-website-image')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker rm -f static-website || true'
                    sh 'docker run -d --name static-website -p 8080:80 static-website-image'
                }
            }
        }
    }
}
