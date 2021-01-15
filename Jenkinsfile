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
        sh 'docker kill nodeapptest || true'
        sh 'docker rm nodeapptest || true'
        sh 'docker rmi nodeapptest || true'
        sh 'docker build -t nodeapptest nodeapp'
        sh 'docker run --rm -ti nodeapptest npm test'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker kill nodeapp || true'
        sh 'docker rm nodeapp || true'
        sh 'docker rmi nodeapp || true'
        sh 'docker build -t mynodeapp nodeapp'
        sh 'docker run -dp 3000:3000 -e PORT=3000 --name nodeapp mynodeapp'
      }
    }
  }
}
