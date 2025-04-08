pipeline {
    agent any

    environment {
        // Define the Docker image name
        IMAGE_NAME = 'my-app'
        // Define the container name
        CONTAINER_NAME = 'my-container'
    }

    stages {
        // Stage for building the Docker image
        stage('Build') {
            steps {
                script {
                    echo "Building Docker image..."
                    // Docker build command for Windows
                    bat 'docker build -t ${IMAGE_NAME} .'
                }
            }
        }

        // Stage for running tests with Jest
        stage('Test') {
            steps {
                script {
                    echo "Running tests using Jest..."
                    // Install dependencies and run tests using npm and Jest
                    bat 'npm install'
                    bat 'npm test'
                }
            }
        }

        // Stage for deploying the Docker container
        stage('Deploy') {
            steps {
                script {
                    echo "Deploying application..."
                    // Check if the container is already running and stop it if necessary
                    bat """
                    docker ps -a --filter "name=${CONTAINER_NAME}" --format "{{.Names}}" | findstr /I ${CONTAINER_NAME} > nul && docker rm -f ${CONTAINER_NAME}
                    """
                    // Run the Docker container
                    bat "docker run -d -p 8080:8080 --name ${CONTAINER_NAME} ${IMAGE_NAME}"
                }
            }
        }
    }

    post {
        // Cleanup after the pipeline
        always {
            echo "Cleaning up resources..."
            // Remove Docker container after deployment
            bat "docker rm -f ${CONTAINER_NAME}"
        }
    }
}

