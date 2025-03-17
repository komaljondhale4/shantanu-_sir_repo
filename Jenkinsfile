pipline{
  agent any
  environment{
          i_name="timage"
          c_name="tcontainer"
  }
  stages{
    stage('clone repository'){
           steps {
                    git 'https://github.com/komaljondhale4/shantanu-_sir_repo.git'
                 }
                              }
     stage('compile through maven'){
            steps{
                    sh "mvn clean install"
                  } 
                                   }
     stage('creat docker image'){
              steps{
                     sh "dcoker build -t tsimageLWA ."
                   }
                                }
     stage ('creat container'){
               steps{
                      sh "docker stop ${c_name} || true"
                      sh "docker rm ${c_name} || true"
                      sh "docker run -d --name ${c_name}-p 80:8080 ${i_name}"
                    }
                               }
  }  
}
