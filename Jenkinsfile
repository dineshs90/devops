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
                    sh "/opt/homebrew/bin/podman run -itd -p 8085:8085 --name gin-docker-app myapp:${BUILD_NUMBER}"
                }
            }
        }
        stage('k8s'){
            steps{
                dir('k8s'){
                    sh 'kubectl apply -f Deployment.yaml'
                }
            }
        }

        stage('validate'){
            steps{
                sh 'curl http://localhost:8085/health'
                sh 'kubectl get pods'
                sh 'kubectl get svc'
            }
        }
    }
}
