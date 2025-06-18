pipeline{
    agent any
    stages{
        stage('Git clone'){
            steps {
                git branch: 'main',
                    url: 'git@github.com:dineshs90/devops.git',
                    credentialsId: 'github-ssh'
      }
            // steps{git 'git@github.com:dineshs90/devops.git branch:main' }
            
        }
        stage('Build Docker images'){
            steps{
                script{
                    sh "/opt/homebrew/bin/podman build -t myapp:${BUILD_NUMBER} ."
                }
                
            }
        }
        stage('Run Docker Image'){
            steps{
                script{
                    sh "/opt/homebrew/bin/podman run -itd -p 80:8080 --name gin-docker-app myapp:${BUILD_NUMBER}}"
                }
            }
        }

        stage('validate'){
            steps{
                sh 'curl http://localhost:80/health'
            }
        }
    }
}