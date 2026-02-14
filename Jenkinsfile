pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning...'
            }
        }

        stage('Build') {
            steps {
                bat 'npm install'
                bat 'npm run build'
            }
        }
    }
}
