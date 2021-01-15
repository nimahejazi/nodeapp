pipeline {
  agent any

  stages {

    stage('Checkout') {
      steps {
        git url: 'https://github.com/nimahejazi/nodeapp.git'
      }
    }
    stage('Test') {
      steps {
        sh 'docker kill nodeapptest > /dev/null 2>&1'
        sh 'docker rm nodeapptest > /dev/null 2>&1'
        sh 'docker rmi nodeapptest > /dev/null 2>&1'
        sh 'docker build -t nodeapptest nodeapp'
        sh 'docker run --rm -ti nodeapptest npm test'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker kill nodeapp > /dev/null 2>&1'
        sh 'docker rm nodeapp > /dev/null 2>&1'
        sh 'docker rmi nodeapp > /dev/null 2>&1'
        sh 'docker build -t mynodeapp nodeapp'
        sh 'docker run -dp 3000:3000 -e PORT=3000 --name nodeapp mynodeapp'
      }
    }
  }
}
