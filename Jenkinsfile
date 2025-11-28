pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials') 
        DOCKER_IMAGE = "abdullahdjama/python-demo"
    }

    stages {
        stage('Abdullah Djama - Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_IMAGE:latest .'
                }
            }
        }

        stage('Abdullah Djama - Login to Dockerhub') {
            steps {
                script {
                    sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
                }
            }
        }

        stage('Abdullah Djama - Push image to Dockerhub') {
            steps {
                script {
                    sh 'docker push $DOCKER_IMAGE:latest'
                }
            }
        }
    }
}