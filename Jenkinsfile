pipeline {
    agent { label 'dockernode' }
    stages {
        stage('vcs') {
            steps {
                git branch: 'main', 'url: https://github.com/tejachennuru1/docker-jenkin.git'
            }
        }
    }

    stage('build code') {
        steps {
            sh 'curl -fsSL https://get.docker.com -o get-docker.sh'
            sh 'get-docker.sh && docker info'
            sh 'sudo usermode -aG docker ubuntu'
            sh 'sudo reboot'"""

        }
    }

}
