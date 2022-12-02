pipeline {
    agent { label 'nodejenkins' }
    stages {
        stage('vcs') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/tejachennuru1/docker-jenkin.git'
            }
        }

        stage('build code') {
            steps {
                sh 'curl -fsSL https://get.docker.com -o get-docker.sh'
                sh 'sh get-docker.sh'
                sh 'sudo usermod -aG docker ubuntu'
                sh 'sudo systemctl enable docker.service'
                sh 'sudo systemctl start docker'
                sh 'sudo chown ubuntu:ubuntu /var/run/docker.sock'
                sh 'docker info'




            }
        }
    }
}
