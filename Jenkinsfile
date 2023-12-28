pipeline {
    agent any
    tools{
        maven 'M2_HOME'
    }
    environment {
        registry = 'freensh/geoimage'
        registryCredential = 'jenkins-ecr'
        dockerimage = ''
    }
    stages {
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/Freensh/geolocation1.git'
            }
        }
        stage('Code Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build Image') {
            steps {
                script{
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                } 
            }
        }
        stage('Push Image') {
            steps{
                script{
                    withDockerRegistry ([ credentialsId: "docker-login", url: "" ]){
                        dockerImage.push()
                    }
                    
                }
            }
        }
    }
}
