pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'my-app:latest'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image without using 'sh' command
                    bat "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Run npm test using a Node.js container (without 'sh')
                    bat "docker run --rm ${DOCKER_IMAGE} npm install"
                    bat "docker run --rm ${DOCKER_IMAGE} npm test"
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Run the Docker container, exposing port 8080
                    bat "docker run -d -p 8080:8080 --name my-container ${DOCKER_IMAGE}"
                }
            }
        }

        stage('Clean up') {
            steps {
                script {
                    // Remove the Docker container after use
                    bat "docker rm -f my-container || echo 'Container already removed'"
                }
            }
        }
    }
}

