pipeline {
  agent any

  stages {
    stage('Clone Repo') {
      steps {
        git 'https://github.com/sravya222/staticwebsitehosting.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t nginx .'
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker rm -f static-container || true'
        sh 'docker run -d -p 8080:80 --name static-container nginx'
      }
    }
  }
}
