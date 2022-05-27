pipeline {

    agent any
    
    
    stages {

        stage('Set permission to execute') {
            steps {
                sh 'sudo chmod 777 run.sh'
            }
        }

    stages {

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
                sh "packer build packer_file.json"
            }
        }

        stage('Docker run image') {
            steps {
                sh "docker run -p 8081:8081 fhfelipefh/calculator:latest"
            }
        }
    }
}
