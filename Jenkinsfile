pipeline {
    agent any 
    stages {
        stage('Compile and Clean') { 
            steps {
                // Run Maven on a Unix agent.
              
                sh "mvn clean compile"
            }
        }
        stage('Build Docker image'){
          
            steps {
                echo "Hello Java Express"
                sh 'ls'
                sudo docker build -t  livingdead0/springapp:${BUILD_NUMBER} .
            }
        }
        stage('Docker Login'){
            
            steps {
                 withCredentials([string(credentialsId: 'DockerId', variable: 'Dockerpwd')]) {
                    sudo docker login -u livingdead0 -p lucky@123
                }
            }                
        }
        stage('Docker Push'){
            steps {
                sudo docker push livingdead0/springapp:${BUILD_NUMBER}
            }
        }
        stage('Docker deploy'){
            steps {
                sudo docker run -itd -p  8081:8080 livingdead0/springapp:${BUILD_NUMBER}
            }
        }
    }
}
