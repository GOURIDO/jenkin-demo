pipeline {
    agent any

    environment {
        IMAGE_NAME = "jenkin-demo"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add your test commands here
                sh 'echo "No tests yet!"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                // Add your deploy commands here
                sh 'echo "Deploy logic goes here"'
            }
        }
    }

    post {
        always {
            echo 'Cleaning up resources...'
            sh 'docker rmi $IMAGE_NAME || true'
        }
        failure {
            echo 'Build failed!'
        }
        success {
            echo 'Build succeeded!'
        }
    }
}
