pipeline {
    agent any
    tools{
        maven 'M2_HOME'
    }
    environment {
        registry = '464787010492.dkr.ecr.us-east-1.amazonaws.com/jenkins-repo'
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
        }  
    }
}
