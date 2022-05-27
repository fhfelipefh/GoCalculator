pipeline {

    agent any
    
    stages {
        
        stage('Set permission to execute') {
            steps {
                sh 'chmod 777 run.sh'
            }
        }
        
        stage('Install softwares') {
            steps {
                sh './run.sh'
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
                sh "sudo docker run -p 8081:8081 fhfelipefh/calculator:latest"
            }
        }
        
    }
}
