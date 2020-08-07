pipeline {
    agent { label 'my_node_label' docker 'mkenjis/mynode_img' }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
                sh 'svn --version'
            }
        }
    }
}