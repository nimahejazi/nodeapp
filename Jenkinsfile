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
        sh 'docker kill nodeapptest'
        sh 'docker rm nodeapptest'
        sh 'docker rmi nodeapptest'
        sh 'docker build -t nodeapptest nodeapp'
        sh 'docker run --rm -ti nodeapptest npm test'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker kill nodeapp'
        sh 'docker rm nodeapp'
        sh 'docker rmi nodeapp'
        sh 'docker build -t mynodeapp nodeapp'
        sh 'docker run -dp 3000:3000 -e PORT=3000 --name nodeapp mynodeapp'
      }
    }
  }
}
