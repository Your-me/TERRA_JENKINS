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
        stage('Change Directory') {
            steps {
                dir('dev') {
                    echo 'Welcome to Dev Enviroment'
                    sh 'ls'
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform explicit') {
            steps {
                sh 'terraform apply -var-file=terraform.tfvars -auto-approve'
            }
        }
    }
}
