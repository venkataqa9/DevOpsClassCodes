pipeline {
    agent any  
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
        stage('package') {
            steps {
                sh 'mvn package'
            }
        }
        stage("Build image") {
            steps {
             sh 'docker build -t addressbook:latest .'
            }
        }
        stage("Tag the image") {
            steps {
             sh 'docker tag addressbook:latest 727630377353/addressbook:1.0'
            }
        }
        stage('Push Image to Dockerhub') {
            steps {
             withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: "dockerhub_id", usernameVariable: 'DOCKER_HUB_USER', passwordVariable: 'DOCKER_HUB_PASSWORD']]) {
            sh 'docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD'
            sh 'docker push 727630377353/addressbook:1.0'
            }
        }
        
    }  
}
}
