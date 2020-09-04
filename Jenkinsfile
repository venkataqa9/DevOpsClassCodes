pipeline {
    agent {  
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }
        
    }
    }
}
