pipline{
  agent any
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
                      sh "docker stop tsimageLWA || true"
                      sh " docker rm tsimageLWA || true
                      sh " docker run -d -p 80:8080 tsimageLWA"
                    }
                               }
  }  
}
