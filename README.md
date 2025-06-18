# devops
Devops demoapp

# podman 
podman machine start
podman machine stop

# Always delete previous pod before triggering build via jenkins


# Jenkins

brew services start jenkins-lts # starting the jenkins server
brew services list # to check server is running or not

brew services stop jenkins-lts
brew services restart jenkins-lts

# jenkins workspace if running in local

/Users/dinesh/.jenkins/workspace


# k8s

minikube start --driver=podman
minikube status
minikube service myapp-service --url




