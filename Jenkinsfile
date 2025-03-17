pipeline {
    agent any
    environment {
        i_name = "timage"  // Image name
        c_name = "tcontainer"  // Container name
    }
    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/komaljondhale4/shantanu-_sir_repo.git'
            }
        }
        stage('Compile through Maven') {
            steps {
                sh "mvn clean install"  // Run Maven to build the project
            }
        }
        stage('Create Docker Image') {
            steps {
                // Correct the typo 'dcoker' to 'docker'
                sh "docker build -t ${i_name} ."  // Build Docker image using environment variable
            }
        }
        stage('Create Container') {
            steps {
                // Stop and remove the container if it exists
                sh "docker stop ${c_name} || true"
                sh "docker rm ${c_name} || true"
                
                // Run a new container from the built image
                sh "docker run -d --name ${c_name} -p 80:8080 ${i_name}"  // Correct port mapping
            }
        }
    }
}
