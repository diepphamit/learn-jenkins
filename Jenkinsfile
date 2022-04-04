pipeline {

    environment {
        dockerimagename = "diepphamit/nodeapp"
        dockerImage = ""
    }

    agent any

    stages {

        stage('Checkout source') {
            steps {
                git 'https://github.com/diepphamit/learn-jenkins.git'
            }
        }

        stage('Build image') {
            steps {
                script {
                    dockerImage = docker.build dockerimagename
                }
            }
        }

        stage('Pushing image') {
            environment {
                registryCredential = 'dockerhublogin'
            }
            steps {
                script {
                    docker.withRegistry(' https://registry.hub.docker.com', registryCredential) {
                        dockerImage.push("latest")
                    }
                }
            }
        }


    }
}