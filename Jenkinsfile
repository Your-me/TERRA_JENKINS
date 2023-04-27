pipeline {
    agent any
    tools {
        terraform 'terraform 77'
    }


    stages {
        stage('Git Branch CheckOut') {
            steps {
                 git branch: 'main', credentialsId: 'yourme_git', url: 'https://github.com/Your-me/TERRA_JENKINS.git'
                }
            }
        stage('Change Directory to Dev') {
            steps {
                dir('dev') {
                    echo 'Hello Elearners!'
                }
            }
        stage('Perform Terraform Action') {
            steps {
                echo 'terraform action is ---> ${action}'
                sh 'terraform ${action} -auto-approve'
            }
        }   
        }
    }
}

