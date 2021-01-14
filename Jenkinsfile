pipeline {
  agent any

  stage('Checkout') {
    steps {
      git url: 'https://github.com/nimahejazi/nodeapp.git'
    }
  }
  stage('Test') {
    steps {
      sh './test.sh'
    }
  }
  stage('Deploy') {
    steps {
      sh './deploy.sh'
    }
  }
}
