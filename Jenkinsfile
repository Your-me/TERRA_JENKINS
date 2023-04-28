pipeline {
    agent any
    tools {
        terraform 'terraform-10'
    }
    
    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Your-me/TERRA_JENKINS.git'
            }
        }
        stage('Parent Directory') {
            steps {
                dir('vpc') {
                    echo 'Initializing parent mode'
                    sh 'ls'
                    sh 'pwd'
                    sh 'terraform init'
                }
            }
        }
        stage('Change Directory') {
            steps {
                dir('./dev') {
                    echo 'Welcome to Dev Enviroment'
                    sh 'ls'
                    sh 'pwd'
                    sh 'terraform init'
                    sh "terraform apply -var-file='dev.tfvars' -auto-approve"
                }
            }
        }
        
    }
}
