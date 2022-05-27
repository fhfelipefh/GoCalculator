pipeline {

    agent (label 'linux')

    stages {

        stage('Install softwares') {
            steps {
                sh 'run.sh'
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
