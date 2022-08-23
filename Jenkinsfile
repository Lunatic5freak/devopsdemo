pipeline {
    agent any 
    stages {
        stage('Compile and Clean') { 
            steps {
                sh "mvn clean install"
            }
        }
        stage('Build Docker image'){
            steps {
                sh 'docker build -t  livingdead0/springapp:${BUILD_NUMBER} .'
            }
        }
        stage('Docker Login'){
            steps{
                sh 'docker login -u livingdead0 -p lucky@123'  
            }
        }
        stage('Docker Push'){
            steps {
                sh 'docker push livingdead0/springapp:${BUILD_NUMBER}'
            }
        }
        stage('Docker deploy'){
            steps {
               sh 'docker run -itd -p  8081:8080 livingdead0/springapp:${BUILD_NUMBER}'
            }
        }
    }
}
