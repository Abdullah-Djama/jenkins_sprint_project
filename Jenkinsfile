pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials')
        DOCKER_IMAGE = "abdullahdjama/python-demo"
    }

    stages {
        stage('Checkout from GitHub') {
            steps {
                // Jenkins automatically uses the credentials you set in the job
                git branch: 'main',
                    url: 'https://github.com/Abdullah-Djama/jenkins_sprint_project.git',
                    credentialsId: 'github-credentials'
            }
        }

        stage('Abdullah Djama - Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:latest .'
            }
        }

        stage('Abdullah Djama - Login to Dockerhub') {
            steps {
                sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
            }
        }

        stage('Abdullah Djama - Push image to Dockerhub') {
            steps {
                sh 'docker push $DOCKER_IMAGE:latest'
            }
        }
    }
}