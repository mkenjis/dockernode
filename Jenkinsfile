pipeline {
    agent {
        docker { image 'mkenjis/mynode_img' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}