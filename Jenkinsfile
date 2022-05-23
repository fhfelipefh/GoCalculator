pipeline {

    agent any

    stages {

        stage('Packer validate') {
                steps {
                    sh 'packer validate packer_file.json'
                }
        }

        stage('Packer build') {
            steps {
                sh 'packer build packer_file.json'
            }
        }
    }
}