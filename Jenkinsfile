pipeline {
    agent any
    environment {
        i_name = "timage"  // Image name
        c_name = "tcontainer"  // Container name
    }
    stages {
          
        stage('Clean Workspace') {
            steps {
                sh "rm -rf *"  // Deletes all files and directories in the workspace
            }
        }
        stage('Clone repository') {
            steps {
                git 'https://github.com/komaljondhale4/shantanu-_sir_repo.git'
            }
        }
        stage('Compile through Maven') {
            steps {
                sh "mvn clean install -DskipTests"  // Run Maven to build the project
            }
        }
        stage('Create Docker Image') {
            steps {
                 sh "docker rmi ${i_name} || true"  // delet image if exist
                sh "docker build -t ${i_name} ."  // Build Docker image using environment variable
            }
        }
        stage('Create Container') {
            steps {
                // Stop and remove the container if it exists
                sh "docker stop ${c_name} || true"
                sh "docker rm ${c_name} || true"
                
                // Run a new container from the built image
                sh "docker run -d --name ${c_name} -p 8081:8080 ${i_name}"  // Correct port mapping
            }
        }
    }
}
