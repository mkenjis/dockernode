pipeline {
    agent any
    environment {
        GIT_BRANCH_NAME = "branch1"
    }
    stages {
        stage('Test') {
		    agent { dockerfile true }
            steps {
                sh 'node --version'
				sh 'npm run'
            }
        }
		stage('Deploy') {
		    agent none
            steps {
                sh 'echo $PATH'
		        sh 'echo $GIT_BRANCH_NAME >/tmp/branch_name.tmp'
                sh 'ansible-playbook --private-key ~/.ssh/id_rsa -u ec2-user helloworld.yml -i /etc/ansible -e target=web --extra-vars "version=`cat /tmp/branch_name.tmp`" '
            }
        }
    }
}