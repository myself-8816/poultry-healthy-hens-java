pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Uday-63/poultry-healthy-hens-.git'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t healthy-hens .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:8080 healthy-hens'
            }
        }

    }
}
