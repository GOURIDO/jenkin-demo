pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    // Add your build commands (e.g., Maven, Gradle, etc.)
                    sh 'echo "Building the app"'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    // Add your test commands (e.g., unit tests)
                    sh 'echo "Running tests"'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Add your deploy commands (e.g., Docker deploy)
                    sh 'echo "Deploying the app"'
                }
            }
        }
    }
}
