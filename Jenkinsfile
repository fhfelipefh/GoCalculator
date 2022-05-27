pipeline {

    agent any
    
    stages {
        
        stage('Set permission to execute') {
            steps {
                sh 'chmod 777 install.sh && chmod 777 run.sh'
            }
        }
        
        stage('Install softwares') {
            steps {
                sh './install.sh'
            }
        }

        stage('Packer validate') {
            steps {
                sh 'packer validate packer_file.json'
            }
        }
        
        stage('Packer build') {
            steps {
                sh "sudo packer build packer_file.json"
            }
        }

        stage('Docker run image') {
            steps {
                sh "./run.sh"
            }
        }

        stage('Verify docker image is running') {
            steps {
                sh "sudo docker ps"
            }
        }
        
    }
}
