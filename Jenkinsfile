pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying using Docker...'

                    // Build Docker image
                    sh 'docker build -t my-node-app .'

                    // Stop and remove old container (if running)
                    sh 'docker stop my-node-app-container || true'
                    sh 'docker rm my-node-app-container || true'

                    // Run the container
                    sh 'docker run -d -p 3000:3000 --name my-node-app-container my-node-app'
                }
            }
        }
    }
}
